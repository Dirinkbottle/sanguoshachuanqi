.class public Lcom/sgscq/vpn/DebugSparringConfigActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final f:[F


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Lcom/sgscq/vpn/DebugSparringConfig$Config;

.field public c:Landroid/widget/EditText;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/Button;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f:[F

    return-void

    :array_0
    .array-data 4
        0x3f266666    # 0.65f
        0x3fa00000    # 1.25f
        0x3fb33333    # 1.4f
        0x3fb33333    # 1.4f
        0x3f3851ec    # 0.72f
        0x3f333333    # 0.7f
        0x3fc00000    # 1.5f
        0x3fc00000    # 1.5f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static d(Ljava/util/List;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "\uff1b"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(IIFII)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 p0, 0x0

    invoke-virtual {v0, p3, p0, p4, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method public static g(Lcom/sgscq/vpn/v0;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/v0;->a:Lcom/sgscq/vpn/DebugSparringConfig$Slot;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->generalId:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    iget-object v3, p0, Lcom/sgscq/vpn/v0;->b:Landroid/widget/Button;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    iget-object v5, p0, Lcom/sgscq/vpn/v0;->a:Lcom/sgscq/vpn/DebugSparringConfig$Slot;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v6, v5, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->generalId:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v6, :cond_2

    .line 28
    .line 29
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    throw v4

    .line 37
    :cond_2
    :goto_1
    const-string v6, "\u65e0"

    .line 38
    .line 39
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lcom/sgscq/vpn/v0;->d:Landroid/widget/Button;

    .line 43
    .line 44
    iget-object v7, v5, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->cultivateAttr:Ljava/lang/String;

    .line 45
    .line 46
    const-string v8, "attack"

    .line 47
    .line 48
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    if-eqz v8, :cond_3

    .line 53
    .line 54
    const-string v7, "\u653b"

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    const-string v8, "defense"

    .line 58
    .line 59
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-eqz v8, :cond_4

    .line 64
    .line 65
    const-string v7, "\u9632"

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    const-string v8, "hp"

    .line 69
    .line 70
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-eqz v8, :cond_5

    .line 75
    .line 76
    const-string v7, "\u8840"

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_5
    const-string v8, "wisdom"

    .line 80
    .line 81
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_6

    .line 86
    .line 87
    const-string v7, "\u667a"

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_6
    move-object v7, v6

    .line 91
    :goto_2
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    iget-object v3, p0, Lcom/sgscq/vpn/v0;->e:Landroid/widget/CheckBox;

    .line 95
    .line 96
    if-eqz v0, :cond_7

    .line 97
    .line 98
    const-string v7, "none"

    .line 99
    .line 100
    iget-object v8, v5, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->cultivateAttr:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-nez v7, :cond_7

    .line 107
    .line 108
    move v7, v1

    .line 109
    goto :goto_3

    .line 110
    :cond_7
    move v7, v2

    .line 111
    :goto_3
    invoke-virtual {v3, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 112
    .line 113
    .line 114
    iget-object v3, p0, Lcom/sgscq/vpn/v0;->e:Landroid/widget/CheckBox;

    .line 115
    .line 116
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-eqz v7, :cond_8

    .line 121
    .line 122
    iget-boolean v7, v5, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->extreme:Z

    .line 123
    .line 124
    if-eqz v7, :cond_8

    .line 125
    .line 126
    move v7, v1

    .line 127
    goto :goto_4

    .line 128
    :cond_8
    move v7, v2

    .line 129
    :goto_4
    invoke-virtual {v3, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 130
    .line 131
    .line 132
    iget-object v3, p0, Lcom/sgscq/vpn/v0;->f:Landroid/widget/Button;

    .line 133
    .line 134
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 135
    .line 136
    .line 137
    iget-object v3, p0, Lcom/sgscq/vpn/v0;->c:Landroid/widget/Button;

    .line 138
    .line 139
    if-nez v0, :cond_f

    .line 140
    .line 141
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    iget-object v3, p0, Lcom/sgscq/vpn/v0;->f:Landroid/widget/Button;

    .line 145
    .line 146
    if-eqz v0, :cond_a

    .line 147
    .line 148
    iget-object v7, v5, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->skillId:Ljava/lang/String;

    .line 149
    .line 150
    if-eqz v7, :cond_a

    .line 151
    .line 152
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-eqz v7, :cond_9

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_9
    throw v4

    .line 160
    :cond_a
    :goto_5
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    iget-object v3, p0, Lcom/sgscq/vpn/v0;->g:Landroid/widget/Button;

    .line 164
    .line 165
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 166
    .line 167
    .line 168
    iget-object v3, p0, Lcom/sgscq/vpn/v0;->h:Landroid/widget/Button;

    .line 169
    .line 170
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 171
    .line 172
    .line 173
    iget-object v3, p0, Lcom/sgscq/vpn/v0;->g:Landroid/widget/Button;

    .line 174
    .line 175
    if-eqz v0, :cond_c

    .line 176
    .line 177
    iget-object v7, v5, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->deputyGeneralIds:Ljava/util/List;

    .line 178
    .line 179
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    check-cast v2, Ljava/lang/String;

    .line 184
    .line 185
    if-eqz v2, :cond_c

    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-eqz v2, :cond_b

    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_b
    throw v4

    .line 195
    :cond_c
    :goto_6
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    iget-object v2, p0, Lcom/sgscq/vpn/v0;->h:Landroid/widget/Button;

    .line 199
    .line 200
    if-eqz v0, :cond_e

    .line 201
    .line 202
    iget-object v3, v5, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->deputyGeneralIds:Ljava/util/List;

    .line 203
    .line 204
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    check-cast v1, Ljava/lang/String;

    .line 209
    .line 210
    if-eqz v1, :cond_e

    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-eqz v1, :cond_d

    .line 217
    .line 218
    goto :goto_7

    .line 219
    :cond_d
    throw v4

    .line 220
    :cond_e
    :goto_7
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    .line 222
    .line 223
    iget-object p0, p0, Lcom/sgscq/vpn/v0;->d:Landroid/widget/Button;

    .line 224
    .line 225
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :cond_f
    throw v4
.end method

.method public static k(Lcom/sgscq/vpn/v0;I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_6

    .line 7
    .line 8
    iget-object p0, p0, Lcom/sgscq/vpn/v0;->a:Lcom/sgscq/vpn/DebugSparringConfig$Slot;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->generalId:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v0, :cond_6

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    const/4 v0, -0x1

    .line 22
    const/4 v1, 0x0

    .line 23
    if-ne p1, v0, :cond_5

    .line 24
    .line 25
    iget-object v0, p0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->skillId:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    throw v1

    .line 37
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 38
    :goto_1
    iget-object v2, p0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->deputyGeneralIds:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-ge v0, v2, :cond_4

    .line 45
    .line 46
    if-ne v0, p1, :cond_3

    .line 47
    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    iget-object p0, p0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->deputyGeneralIds:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Ljava/lang/String;

    .line 58
    .line 59
    throw v1

    .line 60
    :cond_4
    return-void

    .line 61
    :cond_5
    throw v1

    .line 62
    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/widget/Button;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41300000    # 11.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    move-result v1

    invoke-virtual {v0, v2, p1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-object v0
.end method

.method public final b(I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->fromJsonOrNull(Ljava/lang/String;)Lcom/sgscq/vpn/DebugSparringConfig$Config;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget-object v1, v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->d:Landroid/widget/TextView;

    .line 11
    .line 12
    const-string v3, "\u5bfc\u5165\u5931\u8d25\uff1aJSON \u683c\u5f0f\u65e0\u6548"

    .line 13
    .line 14
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto/16 :goto_5

    .line 22
    .line 23
    :cond_0
    new-instance v3, La/a;

    .line 24
    .line 25
    const/4 v4, 0x3

    .line 26
    invoke-direct {v3, v0, v4}, La/a;-><init>(Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v3}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->validate(Lcom/sgscq/vpn/DebugSparringConfig$SkillTypeResolver;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-nez v5, :cond_1

    .line 38
    .line 39
    iget-object v1, v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->d:Landroid/widget/TextView;

    .line 40
    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v5, "\u5bfc\u5165\u5931\u8d25\uff1a"

    .line 44
    .line 45
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v3}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->d(Ljava/util/List;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    const-string v1, "\u5bfc\u5165\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u9635\u5bb9\u51b2\u7a81"

    .line 63
    .line 64
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    goto/16 :goto_5

    .line 69
    .line 70
    :cond_1
    invoke-virtual {v1}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->normalized()Lcom/sgscq/vpn/DebugSparringConfig$Config;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iput-object v1, v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b:Lcom/sgscq/vpn/DebugSparringConfig$Config;

    .line 75
    .line 76
    const-string v3, "sgscq_config_v2"

    .line 77
    .line 78
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v1, v3}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->save(Landroid/content/SharedPreferences;)V

    .line 83
    .line 84
    .line 85
    iget-object v1, v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->a:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 88
    .line 89
    .line 90
    new-instance v3, Landroid/widget/LinearLayout;

    .line 91
    .line 92
    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    const/4 v5, 0x1

    .line 96
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 97
    .line 98
    .line 99
    const/16 v6, 0xe

    .line 100
    .line 101
    invoke-virtual {v0, v6}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    const/16 v8, 0xc

    .line 106
    .line 107
    invoke-virtual {v0, v8}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    invoke-virtual {v0, v6}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    invoke-virtual {v0, v8}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    invoke-virtual {v3, v7, v9, v6, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 120
    .line 121
    .line 122
    const/16 v6, 0x16

    .line 123
    .line 124
    const/16 v7, 0x19

    .line 125
    .line 126
    const/16 v8, 0x1f

    .line 127
    .line 128
    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 133
    .line 134
    .line 135
    new-instance v6, Landroid/widget/LinearLayout;

    .line 136
    .line 137
    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 141
    .line 142
    .line 143
    const/16 v7, 0x10

    .line 144
    .line 145
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 146
    .line 147
    .line 148
    const-string v8, "\u8fd4\u56de"

    .line 149
    .line 150
    invoke-virtual {v0, v8}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->a(Ljava/lang/String;)Landroid/widget/Button;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    iput-object v8, v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->e:Landroid/widget/Button;

    .line 155
    .line 156
    new-instance v9, Lcom/sgscq/vpn/q0;

    .line 157
    .line 158
    invoke-direct {v9, v0, v2}, Lcom/sgscq/vpn/q0;-><init>(Ljava/lang/Object;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    .line 163
    .line 164
    iget-object v8, v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->e:Landroid/widget/Button;

    .line 165
    .line 166
    const/16 v9, 0x54

    .line 167
    .line 168
    invoke-virtual {v0, v9}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    const/16 v10, 0x24

    .line 173
    .line 174
    invoke-virtual {v0, v10}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 175
    .line 176
    .line 177
    move-result v11

    .line 178
    const/16 v12, 0x8

    .line 179
    .line 180
    invoke-virtual {v0, v12}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 181
    .line 182
    .line 183
    move-result v13

    .line 184
    const/4 v14, 0x0

    .line 185
    invoke-static {v9, v11, v14, v2, v13}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f(IIFII)Landroid/widget/LinearLayout$LayoutParams;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    invoke-virtual {v6, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    .line 191
    .line 192
    new-instance v8, Landroid/widget/TextView;

    .line 193
    .line 194
    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 195
    .line 196
    .line 197
    const-string v9, "DEBUG \u5207\u78cb\u9635\u5bb9\u914d\u7f6e"

    .line 198
    .line 199
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    .line 201
    .line 202
    const/16 v9, 0xf6

    .line 203
    .line 204
    const/16 v11, 0xc4

    .line 205
    .line 206
    const/16 v13, 0x53

    .line 207
    .line 208
    invoke-static {v9, v11, v13}, Landroid/graphics/Color;->rgb(III)I

    .line 209
    .line 210
    .line 211
    move-result v15

    .line 212
    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    .line 214
    .line 215
    const/high16 v15, 0x41a00000    # 20.0f

    .line 216
    .line 217
    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v10}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 224
    .line 225
    .line 226
    move-result v15

    .line 227
    const/high16 v9, 0x3f800000    # 1.0f

    .line 228
    .line 229
    invoke-static {v2, v15, v9, v2, v2}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f(IIFII)Landroid/widget/LinearLayout$LayoutParams;

    .line 230
    .line 231
    .line 232
    move-result-object v15

    .line 233
    invoke-virtual {v6, v8, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v10}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 237
    .line 238
    .line 239
    move-result v8

    .line 240
    invoke-virtual {v0, v12}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 241
    .line 242
    .line 243
    move-result v10

    .line 244
    const/4 v15, -0x1

    .line 245
    invoke-static {v15, v8, v14, v2, v10}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f(IIFII)Landroid/widget/LinearLayout$LayoutParams;

    .line 246
    .line 247
    .line 248
    move-result-object v8

    .line 249
    invoke-virtual {v3, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    .line 251
    .line 252
    iget-object v6, v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->e:Landroid/widget/Button;

    .line 253
    .line 254
    new-instance v8, Lcom/sgscq/vpn/b;

    .line 255
    .line 256
    invoke-direct {v8, v0, v5}, Lcom/sgscq/vpn/b;-><init>(Ljava/lang/Object;I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v6, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 260
    .line 261
    .line 262
    new-instance v6, Landroid/widget/LinearLayout;

    .line 263
    .line 264
    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 271
    .line 272
    .line 273
    const/high16 v8, 0x41500000    # 13.0f

    .line 274
    .line 275
    const-string v10, "\u4e3b\u516c\u7b49\u7ea7"

    .line 276
    .line 277
    const v11, -0x333334

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v10, v8, v11}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->i(Ljava/lang/String;FI)Landroid/widget/TextView;

    .line 281
    .line 282
    .line 283
    move-result-object v8

    .line 284
    const/16 v10, 0x48

    .line 285
    .line 286
    invoke-virtual {v0, v10}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 287
    .line 288
    .line 289
    move-result v10

    .line 290
    invoke-static {v10, v15, v14, v2, v2}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f(IIFII)Landroid/widget/LinearLayout$LayoutParams;

    .line 291
    .line 292
    .line 293
    move-result-object v10

    .line 294
    invoke-virtual {v6, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    .line 296
    .line 297
    new-instance v8, Landroid/widget/EditText;

    .line 298
    .line 299
    invoke-direct {v8, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 300
    .line 301
    .line 302
    iput-object v8, v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->c:Landroid/widget/EditText;

    .line 303
    .line 304
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 305
    .line 306
    .line 307
    iget-object v8, v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->c:Landroid/widget/EditText;

    .line 308
    .line 309
    const/4 v10, 0x2

    .line 310
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setInputType(I)V

    .line 311
    .line 312
    .line 313
    iget-object v8, v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->c:Landroid/widget/EditText;

    .line 314
    .line 315
    iget-object v11, v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b:Lcom/sgscq/vpn/DebugSparringConfig$Config;

    .line 316
    .line 317
    iget v11, v11, Lcom/sgscq/vpn/DebugSparringConfig$Config;->lordLevel:I

    .line 318
    .line 319
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v11

    .line 323
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    .line 325
    .line 326
    iget-object v8, v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->c:Landroid/widget/EditText;

    .line 327
    .line 328
    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 329
    .line 330
    .line 331
    iget-object v8, v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->c:Landroid/widget/EditText;

    .line 332
    .line 333
    const/high16 v11, 0x41600000    # 14.0f

    .line 334
    .line 335
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 336
    .line 337
    .line 338
    iget-object v8, v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->c:Landroid/widget/EditText;

    .line 339
    .line 340
    const/16 v11, 0x11

    .line 341
    .line 342
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 343
    .line 344
    .line 345
    iget-object v8, v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->c:Landroid/widget/EditText;

    .line 346
    .line 347
    invoke-virtual {v8, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 348
    .line 349
    .line 350
    iget-object v8, v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->c:Landroid/widget/EditText;

    .line 351
    .line 352
    invoke-virtual {v8, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 353
    .line 354
    .line 355
    iget-object v8, v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->c:Landroid/widget/EditText;

    .line 356
    .line 357
    const/16 v11, 0x4c

    .line 358
    .line 359
    invoke-virtual {v0, v11}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 360
    .line 361
    .line 362
    move-result v11

    .line 363
    const/16 v13, 0x2a

    .line 364
    .line 365
    invoke-virtual {v0, v13}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 366
    .line 367
    .line 368
    move-result v7

    .line 369
    const/16 v12, 0xa

    .line 370
    .line 371
    invoke-virtual {v0, v12}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 372
    .line 373
    .line 374
    move-result v4

    .line 375
    invoke-static {v11, v7, v14, v2, v4}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f(IIFII)Landroid/widget/LinearLayout$LayoutParams;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    invoke-virtual {v6, v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    .line 381
    .line 382
    const v4, -0x777778

    .line 383
    .line 384
    .line 385
    const-string v7, "\u6b66\u5c06\u81ea\u52a8\u4f7f\u7528\u8be5\u7b49\u7ea7\u5141\u8bb8\u7684\u4e0a\u9650"

    .line 386
    .line 387
    const/high16 v8, 0x41400000    # 12.0f

    .line 388
    .line 389
    invoke-virtual {v0, v7, v8, v4}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->i(Ljava/lang/String;FI)Landroid/widget/TextView;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    invoke-virtual {v0, v12}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 394
    .line 395
    .line 396
    move-result v7

    .line 397
    invoke-static {v2, v15, v9, v2, v7}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f(IIFII)Landroid/widget/LinearLayout$LayoutParams;

    .line 398
    .line 399
    .line 400
    move-result-object v7

    .line 401
    invoke-virtual {v6, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    .line 403
    .line 404
    const/16 v4, 0x86

    .line 405
    .line 406
    const/16 v7, 0xef

    .line 407
    .line 408
    const/16 v11, 0xac

    .line 409
    .line 410
    invoke-static {v4, v7, v11}, Landroid/graphics/Color;->rgb(III)I

    .line 411
    .line 412
    .line 413
    move-result v9

    .line 414
    const-string v4, "\u9ed8\u8ba4\u7f18\u5206\u88c5\u5907"

    .line 415
    .line 416
    invoke-virtual {v0, v4, v8, v9}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->i(Ljava/lang/String;FI)Landroid/widget/TextView;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    const/16 v9, 0x6e

    .line 421
    .line 422
    invoke-virtual {v0, v9}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 423
    .line 424
    .line 425
    move-result v9

    .line 426
    invoke-virtual {v0, v12}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 427
    .line 428
    .line 429
    move-result v12

    .line 430
    invoke-static {v9, v15, v14, v2, v12}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f(IIFII)Landroid/widget/LinearLayout$LayoutParams;

    .line 431
    .line 432
    .line 433
    move-result-object v9

    .line 434
    invoke-virtual {v6, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    .line 436
    .line 437
    const-string v4, "\u5bfc\u5165\u914d\u7f6e"

    .line 438
    .line 439
    invoke-virtual {v0, v4}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->a(Ljava/lang/String;)Landroid/widget/Button;

    .line 440
    .line 441
    .line 442
    move-result-object v4

    .line 443
    new-instance v9, Lcom/sgscq/vpn/q0;

    .line 444
    .line 445
    invoke-direct {v9, v0, v5}, Lcom/sgscq/vpn/q0;-><init>(Ljava/lang/Object;I)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v4, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    .line 450
    .line 451
    const/16 v9, 0x58

    .line 452
    .line 453
    invoke-virtual {v0, v9}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 454
    .line 455
    .line 456
    move-result v12

    .line 457
    invoke-virtual {v0, v13}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 458
    .line 459
    .line 460
    move-result v7

    .line 461
    const/4 v11, 0x6

    .line 462
    invoke-virtual {v0, v11}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 463
    .line 464
    .line 465
    move-result v8

    .line 466
    invoke-static {v12, v7, v14, v2, v8}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f(IIFII)Landroid/widget/LinearLayout$LayoutParams;

    .line 467
    .line 468
    .line 469
    move-result-object v7

    .line 470
    invoke-virtual {v6, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    .line 472
    .line 473
    const-string v4, "\u5bfc\u51fa\u914d\u7f6e"

    .line 474
    .line 475
    invoke-virtual {v0, v4}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->a(Ljava/lang/String;)Landroid/widget/Button;

    .line 476
    .line 477
    .line 478
    move-result-object v4

    .line 479
    new-instance v7, Lcom/sgscq/vpn/q0;

    .line 480
    .line 481
    invoke-direct {v7, v0, v10}, Lcom/sgscq/vpn/q0;-><init>(Ljava/lang/Object;I)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v0, v9}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 488
    .line 489
    .line 490
    move-result v7

    .line 491
    invoke-virtual {v0, v13}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 492
    .line 493
    .line 494
    move-result v8

    .line 495
    invoke-virtual {v0, v11}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 496
    .line 497
    .line 498
    move-result v9

    .line 499
    invoke-static {v7, v8, v14, v2, v9}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f(IIFII)Landroid/widget/LinearLayout$LayoutParams;

    .line 500
    .line 501
    .line 502
    move-result-object v7

    .line 503
    invoke-virtual {v6, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    .line 505
    .line 506
    const-string v4, "\u4fdd\u5b58\u914d\u7f6e"

    .line 507
    .line 508
    invoke-virtual {v0, v4}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->a(Ljava/lang/String;)Landroid/widget/Button;

    .line 509
    .line 510
    .line 511
    move-result-object v4

    .line 512
    new-instance v7, Lcom/sgscq/vpn/q0;

    .line 513
    .line 514
    const/4 v8, 0x3

    .line 515
    invoke-direct {v7, v0, v8}, Lcom/sgscq/vpn/q0;-><init>(Ljava/lang/Object;I)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    .line 520
    .line 521
    const/16 v7, 0x78

    .line 522
    .line 523
    invoke-virtual {v0, v7}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 524
    .line 525
    .line 526
    move-result v7

    .line 527
    invoke-virtual {v0, v13}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 528
    .line 529
    .line 530
    move-result v8

    .line 531
    invoke-static {v7, v8, v14, v2, v2}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f(IIFII)Landroid/widget/LinearLayout$LayoutParams;

    .line 532
    .line 533
    .line 534
    move-result-object v7

    .line 535
    invoke-virtual {v6, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    .line 537
    .line 538
    const/16 v4, 0x34

    .line 539
    .line 540
    invoke-virtual {v0, v4}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 541
    .line 542
    .line 543
    move-result v4

    .line 544
    const/16 v7, 0x8

    .line 545
    .line 546
    invoke-virtual {v0, v7}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 547
    .line 548
    .line 549
    move-result v8

    .line 550
    invoke-static {v15, v4, v14, v2, v8}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f(IIFII)Landroid/widget/LinearLayout$LayoutParams;

    .line 551
    .line 552
    .line 553
    move-result-object v4

    .line 554
    invoke-virtual {v3, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    .line 556
    .line 557
    new-instance v4, Landroid/widget/LinearLayout;

    .line 558
    .line 559
    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 563
    .line 564
    .line 565
    new-instance v6, Landroid/widget/LinearLayout;

    .line 566
    .line 567
    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 571
    .line 572
    .line 573
    const/16 v7, 0x10

    .line 574
    .line 575
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 576
    .line 577
    .line 578
    const-string v17, "\u53f7\u4f4d"

    .line 579
    .line 580
    const-string v18, "\u4e3b\u5c06"

    .line 581
    .line 582
    const-string v19, "\u539f\u751f\u5929\u8d4b"

    .line 583
    .line 584
    const-string v20, "\u7b2c2\u4f4d\u6280\u80fd"

    .line 585
    .line 586
    const-string v21, "\u4fee\u70bc"

    .line 587
    .line 588
    const-string v22, "\u6781\u9650"

    .line 589
    .line 590
    const-string v23, "\u526f\u5c061(\u7b2c3\u4f4d)"

    .line 591
    .line 592
    const-string v24, "\u526f\u5c062(\u7b2c4\u4f4d)"

    .line 593
    .line 594
    filled-new-array/range {v17 .. v24}, [Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v7

    .line 598
    move v8, v2

    .line 599
    :goto_0
    sget-object v9, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f:[F

    .line 600
    .line 601
    const/high16 v12, 0x41200000    # 10.0f

    .line 602
    .line 603
    const/16 v11, 0x8

    .line 604
    .line 605
    if-ge v8, v11, :cond_2

    .line 606
    .line 607
    aget-object v11, v7, v8

    .line 608
    .line 609
    const/16 v2, 0xf6

    .line 610
    .line 611
    const/16 v13, 0x53

    .line 612
    .line 613
    const/16 v14, 0xc4

    .line 614
    .line 615
    invoke-static {v2, v14, v13}, Landroid/graphics/Color;->rgb(III)I

    .line 616
    .line 617
    .line 618
    move-result v15

    .line 619
    invoke-virtual {v0, v11, v12, v15}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->i(Ljava/lang/String;FI)Landroid/widget/TextView;

    .line 620
    .line 621
    .line 622
    move-result-object v2

    .line 623
    const/16 v11, 0x11

    .line 624
    .line 625
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 629
    .line 630
    .line 631
    aget v9, v9, v8

    .line 632
    .line 633
    invoke-virtual {v0, v10}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 634
    .line 635
    .line 636
    move-result v11

    .line 637
    const/4 v13, -0x1

    .line 638
    const/4 v14, 0x0

    .line 639
    invoke-static {v14, v13, v9, v14, v11}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f(IIFII)Landroid/widget/LinearLayout$LayoutParams;

    .line 640
    .line 641
    .line 642
    move-result-object v9

    .line 643
    invoke-virtual {v6, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 644
    .line 645
    .line 646
    add-int/lit8 v8, v8, 0x1

    .line 647
    .line 648
    move v15, v13

    .line 649
    move v2, v14

    .line 650
    const/4 v11, 0x6

    .line 651
    const/16 v13, 0x2a

    .line 652
    .line 653
    const/4 v14, 0x0

    .line 654
    goto :goto_0

    .line 655
    :cond_2
    move v14, v2

    .line 656
    move v13, v15

    .line 657
    const/16 v2, 0x26

    .line 658
    .line 659
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 660
    .line 661
    .line 662
    move-result v7

    .line 663
    const/4 v8, 0x0

    .line 664
    invoke-static {v13, v7, v8, v14, v14}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f(IIFII)Landroid/widget/LinearLayout$LayoutParams;

    .line 665
    .line 666
    .line 667
    move-result-object v7

    .line 668
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    .line 670
    .line 671
    move v6, v5

    .line 672
    :goto_1
    const/16 v7, 0xb

    .line 673
    .line 674
    const/16 v8, 0x1e

    .line 675
    .line 676
    if-gt v6, v7, :cond_6

    .line 677
    .line 678
    iget-object v7, v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b:Lcom/sgscq/vpn/DebugSparringConfig$Config;

    .line 679
    .line 680
    iget-object v7, v7, Lcom/sgscq/vpn/DebugSparringConfig$Config;->slots:Ljava/util/List;

    .line 681
    .line 682
    add-int/lit8 v11, v6, -0x1

    .line 683
    .line 684
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v7

    .line 688
    check-cast v7, Lcom/sgscq/vpn/DebugSparringConfig$Slot;

    .line 689
    .line 690
    new-instance v11, Lcom/sgscq/vpn/v0;

    .line 691
    .line 692
    invoke-direct {v11, v7}, Lcom/sgscq/vpn/v0;-><init>(Lcom/sgscq/vpn/DebugSparringConfig$Slot;)V

    .line 693
    .line 694
    .line 695
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    .line 697
    .line 698
    new-instance v7, Landroid/widget/LinearLayout;

    .line 699
    .line 700
    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 701
    .line 702
    .line 703
    const/4 v13, 0x0

    .line 704
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 705
    .line 706
    .line 707
    const/16 v13, 0x10

    .line 708
    .line 709
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 710
    .line 711
    .line 712
    const/16 v13, 0x28

    .line 713
    .line 714
    const/4 v14, 0x3

    .line 715
    if-gt v6, v14, :cond_3

    .line 716
    .line 717
    invoke-static {v13, v2, v8}, Landroid/graphics/Color;->rgb(III)I

    .line 718
    .line 719
    .line 720
    move-result v8

    .line 721
    goto :goto_2

    .line 722
    :cond_3
    const/16 v8, 0x1d

    .line 723
    .line 724
    const/16 v15, 0x21

    .line 725
    .line 726
    invoke-static {v8, v15, v13}, Landroid/graphics/Color;->rgb(III)I

    .line 727
    .line 728
    .line 729
    move-result v8

    .line 730
    :goto_2
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 731
    .line 732
    .line 733
    new-instance v8, Ljava/lang/StringBuilder;

    .line 734
    .line 735
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    if-gt v6, v14, :cond_4

    .line 742
    .line 743
    const-string v13, " \u524d\u519b"

    .line 744
    .line 745
    goto :goto_3

    .line 746
    :cond_4
    const-string v13, " \u540e\u5907"

    .line 747
    .line 748
    :goto_3
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    .line 750
    .line 751
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v8

    .line 755
    const/16 v13, 0x53

    .line 756
    .line 757
    if-gt v6, v14, :cond_5

    .line 758
    .line 759
    const/16 v14, 0xc4

    .line 760
    .line 761
    const/16 v15, 0xf6

    .line 762
    .line 763
    invoke-static {v15, v14, v13}, Landroid/graphics/Color;->rgb(III)I

    .line 764
    .line 765
    .line 766
    move-result v16

    .line 767
    move/from16 v2, v16

    .line 768
    .line 769
    goto :goto_4

    .line 770
    :cond_5
    const/16 v14, 0xc4

    .line 771
    .line 772
    const/16 v15, 0xf6

    .line 773
    .line 774
    const v2, -0x333334

    .line 775
    .line 776
    .line 777
    :goto_4
    invoke-virtual {v0, v8, v12, v2}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->i(Ljava/lang/String;FI)Landroid/widget/TextView;

    .line 778
    .line 779
    .line 780
    move-result-object v2

    .line 781
    const/16 v8, 0x11

    .line 782
    .line 783
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 784
    .line 785
    .line 786
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 787
    .line 788
    .line 789
    const/16 v8, 0x2e

    .line 790
    .line 791
    invoke-virtual {v0, v8}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 792
    .line 793
    .line 794
    move-result v8

    .line 795
    const/4 v12, 0x0

    .line 796
    aget v13, v9, v12

    .line 797
    .line 798
    invoke-virtual {v0, v10}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 799
    .line 800
    .line 801
    move-result v14

    .line 802
    invoke-static {v12, v8, v13, v12, v14}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f(IIFII)Landroid/widget/LinearLayout$LayoutParams;

    .line 803
    .line 804
    .line 805
    move-result-object v8

    .line 806
    invoke-virtual {v7, v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 807
    .line 808
    .line 809
    const-string v2, "\u65e0"

    .line 810
    .line 811
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->a(Ljava/lang/String;)Landroid/widget/Button;

    .line 812
    .line 813
    .line 814
    move-result-object v8

    .line 815
    iput-object v8, v11, Lcom/sgscq/vpn/v0;->b:Landroid/widget/Button;

    .line 816
    .line 817
    new-instance v13, Lcom/sgscq/vpn/r0;

    .line 818
    .line 819
    invoke-direct {v13, v0, v11, v12}, Lcom/sgscq/vpn/r0;-><init>(Lcom/sgscq/vpn/DebugSparringConfigActivity;Lcom/sgscq/vpn/v0;I)V

    .line 820
    .line 821
    .line 822
    invoke-virtual {v8, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 823
    .line 824
    .line 825
    iget-object v8, v11, Lcom/sgscq/vpn/v0;->b:Landroid/widget/Button;

    .line 826
    .line 827
    const/16 v13, 0x2a

    .line 828
    .line 829
    invoke-virtual {v0, v13}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 830
    .line 831
    .line 832
    move-result v14

    .line 833
    aget v15, v9, v5

    .line 834
    .line 835
    invoke-virtual {v0, v10}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 836
    .line 837
    .line 838
    move-result v5

    .line 839
    invoke-static {v12, v14, v15, v12, v5}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f(IIFII)Landroid/widget/LinearLayout$LayoutParams;

    .line 840
    .line 841
    .line 842
    move-result-object v5

    .line 843
    invoke-virtual {v7, v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 844
    .line 845
    .line 846
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->a(Ljava/lang/String;)Landroid/widget/Button;

    .line 847
    .line 848
    .line 849
    move-result-object v5

    .line 850
    iput-object v5, v11, Lcom/sgscq/vpn/v0;->c:Landroid/widget/Button;

    .line 851
    .line 852
    invoke-virtual {v5, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 853
    .line 854
    .line 855
    iget-object v5, v11, Lcom/sgscq/vpn/v0;->c:Landroid/widget/Button;

    .line 856
    .line 857
    invoke-virtual {v0, v13}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 858
    .line 859
    .line 860
    move-result v8

    .line 861
    aget v14, v9, v10

    .line 862
    .line 863
    invoke-virtual {v0, v10}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 864
    .line 865
    .line 866
    move-result v15

    .line 867
    invoke-static {v12, v8, v14, v12, v15}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f(IIFII)Landroid/widget/LinearLayout$LayoutParams;

    .line 868
    .line 869
    .line 870
    move-result-object v8

    .line 871
    invoke-virtual {v7, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 872
    .line 873
    .line 874
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->a(Ljava/lang/String;)Landroid/widget/Button;

    .line 875
    .line 876
    .line 877
    move-result-object v5

    .line 878
    iput-object v5, v11, Lcom/sgscq/vpn/v0;->f:Landroid/widget/Button;

    .line 879
    .line 880
    new-instance v8, Lcom/sgscq/vpn/r0;

    .line 881
    .line 882
    const/4 v14, 0x1

    .line 883
    invoke-direct {v8, v0, v11, v14}, Lcom/sgscq/vpn/r0;-><init>(Lcom/sgscq/vpn/DebugSparringConfigActivity;Lcom/sgscq/vpn/v0;I)V

    .line 884
    .line 885
    .line 886
    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 887
    .line 888
    .line 889
    iget-object v5, v11, Lcom/sgscq/vpn/v0;->f:Landroid/widget/Button;

    .line 890
    .line 891
    invoke-virtual {v0, v13}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 892
    .line 893
    .line 894
    move-result v8

    .line 895
    const/4 v14, 0x3

    .line 896
    aget v15, v9, v14

    .line 897
    .line 898
    invoke-virtual {v0, v10}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 899
    .line 900
    .line 901
    move-result v14

    .line 902
    invoke-static {v12, v8, v15, v12, v14}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f(IIFII)Landroid/widget/LinearLayout$LayoutParams;

    .line 903
    .line 904
    .line 905
    move-result-object v8

    .line 906
    invoke-virtual {v7, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 907
    .line 908
    .line 909
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->a(Ljava/lang/String;)Landroid/widget/Button;

    .line 910
    .line 911
    .line 912
    move-result-object v5

    .line 913
    iput-object v5, v11, Lcom/sgscq/vpn/v0;->d:Landroid/widget/Button;

    .line 914
    .line 915
    new-instance v8, Lcom/sgscq/vpn/r0;

    .line 916
    .line 917
    invoke-direct {v8, v0, v11, v10}, Lcom/sgscq/vpn/r0;-><init>(Lcom/sgscq/vpn/DebugSparringConfigActivity;Lcom/sgscq/vpn/v0;I)V

    .line 918
    .line 919
    .line 920
    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 921
    .line 922
    .line 923
    iget-object v5, v11, Lcom/sgscq/vpn/v0;->d:Landroid/widget/Button;

    .line 924
    .line 925
    invoke-virtual {v0, v13}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 926
    .line 927
    .line 928
    move-result v8

    .line 929
    const/4 v12, 0x4

    .line 930
    aget v12, v9, v12

    .line 931
    .line 932
    invoke-virtual {v0, v10}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 933
    .line 934
    .line 935
    move-result v13

    .line 936
    const/4 v14, 0x0

    .line 937
    invoke-static {v14, v8, v12, v14, v13}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f(IIFII)Landroid/widget/LinearLayout$LayoutParams;

    .line 938
    .line 939
    .line 940
    move-result-object v8

    .line 941
    invoke-virtual {v7, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 942
    .line 943
    .line 944
    new-instance v5, Landroid/widget/CheckBox;

    .line 945
    .line 946
    invoke-direct {v5, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 947
    .line 948
    .line 949
    iput-object v5, v11, Lcom/sgscq/vpn/v0;->e:Landroid/widget/CheckBox;

    .line 950
    .line 951
    const-string v8, "\u6781\u9650"

    .line 952
    .line 953
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 954
    .line 955
    .line 956
    iget-object v5, v11, Lcom/sgscq/vpn/v0;->e:Landroid/widget/CheckBox;

    .line 957
    .line 958
    const/high16 v8, 0x41300000    # 11.0f

    .line 959
    .line 960
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 961
    .line 962
    .line 963
    iget-object v5, v11, Lcom/sgscq/vpn/v0;->e:Landroid/widget/CheckBox;

    .line 964
    .line 965
    const/4 v8, -0x1

    .line 966
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 967
    .line 968
    .line 969
    iget-object v5, v11, Lcom/sgscq/vpn/v0;->e:Landroid/widget/CheckBox;

    .line 970
    .line 971
    const/4 v8, 0x1

    .line 972
    invoke-virtual {v5, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 973
    .line 974
    .line 975
    iget-object v5, v11, Lcom/sgscq/vpn/v0;->e:Landroid/widget/CheckBox;

    .line 976
    .line 977
    invoke-virtual {v5, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 978
    .line 979
    .line 980
    iget-object v5, v11, Lcom/sgscq/vpn/v0;->e:Landroid/widget/CheckBox;

    .line 981
    .line 982
    new-instance v8, Lcom/sgscq/vpn/j6;

    .line 983
    .line 984
    const/4 v12, 0x5

    .line 985
    invoke-direct {v8, v11, v12}, Lcom/sgscq/vpn/j6;-><init>(Ljava/lang/Object;I)V

    .line 986
    .line 987
    .line 988
    invoke-virtual {v5, v8}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 989
    .line 990
    .line 991
    iget-object v5, v11, Lcom/sgscq/vpn/v0;->e:Landroid/widget/CheckBox;

    .line 992
    .line 993
    const/16 v8, 0x2a

    .line 994
    .line 995
    invoke-virtual {v0, v8}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 996
    .line 997
    .line 998
    move-result v13

    .line 999
    aget v12, v9, v12

    .line 1000
    .line 1001
    invoke-virtual {v0, v10}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 1002
    .line 1003
    .line 1004
    move-result v14

    .line 1005
    const/4 v15, 0x0

    .line 1006
    invoke-static {v15, v13, v12, v15, v14}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f(IIFII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v12

    .line 1010
    invoke-virtual {v7, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->a(Ljava/lang/String;)Landroid/widget/Button;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v5

    .line 1017
    iput-object v5, v11, Lcom/sgscq/vpn/v0;->g:Landroid/widget/Button;

    .line 1018
    .line 1019
    new-instance v12, Lcom/sgscq/vpn/r0;

    .line 1020
    .line 1021
    const/4 v13, 0x3

    .line 1022
    invoke-direct {v12, v0, v11, v13}, Lcom/sgscq/vpn/r0;-><init>(Lcom/sgscq/vpn/DebugSparringConfigActivity;Lcom/sgscq/vpn/v0;I)V

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v5, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1026
    .line 1027
    .line 1028
    iget-object v5, v11, Lcom/sgscq/vpn/v0;->g:Landroid/widget/Button;

    .line 1029
    .line 1030
    invoke-virtual {v0, v8}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 1031
    .line 1032
    .line 1033
    move-result v12

    .line 1034
    const/4 v14, 0x6

    .line 1035
    aget v8, v9, v14

    .line 1036
    .line 1037
    invoke-virtual {v0, v10}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 1038
    .line 1039
    .line 1040
    move-result v13

    .line 1041
    invoke-static {v15, v12, v8, v15, v13}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f(IIFII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v8

    .line 1045
    invoke-virtual {v7, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1046
    .line 1047
    .line 1048
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->a(Ljava/lang/String;)Landroid/widget/Button;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v2

    .line 1052
    iput-object v2, v11, Lcom/sgscq/vpn/v0;->h:Landroid/widget/Button;

    .line 1053
    .line 1054
    new-instance v5, Lcom/sgscq/vpn/r0;

    .line 1055
    .line 1056
    const/4 v8, 0x4

    .line 1057
    invoke-direct {v5, v0, v11, v8}, Lcom/sgscq/vpn/r0;-><init>(Lcom/sgscq/vpn/DebugSparringConfigActivity;Lcom/sgscq/vpn/v0;I)V

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1061
    .line 1062
    .line 1063
    iget-object v2, v11, Lcom/sgscq/vpn/v0;->h:Landroid/widget/Button;

    .line 1064
    .line 1065
    const/16 v5, 0x2a

    .line 1066
    .line 1067
    invoke-virtual {v0, v5}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 1068
    .line 1069
    .line 1070
    move-result v12

    .line 1071
    const/4 v13, 0x7

    .line 1072
    aget v13, v9, v13

    .line 1073
    .line 1074
    const/4 v15, 0x0

    .line 1075
    invoke-static {v15, v12, v13, v15, v15}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f(IIFII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v12

    .line 1079
    invoke-virtual {v7, v2, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1080
    .line 1081
    .line 1082
    const/16 v2, 0x32

    .line 1083
    .line 1084
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 1085
    .line 1086
    .line 1087
    move-result v2

    .line 1088
    invoke-virtual {v0, v8}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 1089
    .line 1090
    .line 1091
    move-result v8

    .line 1092
    const/4 v12, 0x0

    .line 1093
    const/4 v13, -0x1

    .line 1094
    invoke-static {v13, v2, v12, v15, v8}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f(IIFII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v2

    .line 1098
    invoke-virtual {v4, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1099
    .line 1100
    .line 1101
    invoke-static {v11}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->g(Lcom/sgscq/vpn/v0;)V

    .line 1102
    .line 1103
    .line 1104
    add-int/lit8 v6, v6, 0x1

    .line 1105
    .line 1106
    const/16 v2, 0x26

    .line 1107
    .line 1108
    const/4 v5, 0x1

    .line 1109
    const/high16 v12, 0x41200000    # 10.0f

    .line 1110
    .line 1111
    goto/16 :goto_1

    .line 1112
    .line 1113
    :cond_6
    const/4 v15, 0x0

    .line 1114
    new-instance v1, Landroid/widget/ScrollView;

    .line 1115
    .line 1116
    invoke-direct {v1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1117
    .line 1118
    .line 1119
    const/4 v2, 0x1

    .line 1120
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v1, v15}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 1124
    .line 1125
    .line 1126
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1127
    .line 1128
    const/4 v5, -0x2

    .line 1129
    const/4 v6, -0x1

    .line 1130
    invoke-direct {v2, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1131
    .line 1132
    .line 1133
    invoke-virtual {v1, v4, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1134
    .line 1135
    .line 1136
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1137
    .line 1138
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1139
    .line 1140
    invoke-direct {v2, v6, v15, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1141
    .line 1142
    .line 1143
    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1144
    .line 1145
    .line 1146
    new-instance v1, Landroid/widget/TextView;

    .line 1147
    .line 1148
    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1149
    .line 1150
    .line 1151
    iput-object v1, v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->d:Landroid/widget/TextView;

    .line 1152
    .line 1153
    const/16 v2, 0xfc

    .line 1154
    .line 1155
    const/16 v4, 0xa5

    .line 1156
    .line 1157
    invoke-static {v2, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    .line 1158
    .line 1159
    .line 1160
    move-result v2

    .line 1161
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1162
    .line 1163
    .line 1164
    iget-object v1, v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->d:Landroid/widget/TextView;

    .line 1165
    .line 1166
    const/high16 v2, 0x41400000    # 12.0f

    .line 1167
    .line 1168
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1169
    .line 1170
    .line 1171
    iget-object v1, v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->d:Landroid/widget/TextView;

    .line 1172
    .line 1173
    const/16 v2, 0x10

    .line 1174
    .line 1175
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1176
    .line 1177
    .line 1178
    iget-object v1, v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->d:Landroid/widget/TextView;

    .line 1179
    .line 1180
    invoke-virtual {v0, v8}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 1181
    .line 1182
    .line 1183
    move-result v2

    .line 1184
    const/16 v4, 0x8

    .line 1185
    .line 1186
    invoke-virtual {v0, v4}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b(I)I

    .line 1187
    .line 1188
    .line 1189
    move-result v4

    .line 1190
    const/4 v5, 0x0

    .line 1191
    const/4 v6, -0x1

    .line 1192
    const/4 v7, 0x0

    .line 1193
    invoke-static {v6, v2, v5, v4, v7}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f(IIFII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v2

    .line 1197
    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1198
    .line 1199
    .line 1200
    invoke-virtual {v0, v3}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 1201
    .line 1202
    .line 1203
    iget-object v1, v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->d:Landroid/widget/TextView;

    .line 1204
    .line 1205
    const/16 v2, 0xac

    .line 1206
    .line 1207
    const/16 v3, 0xef

    .line 1208
    .line 1209
    const/16 v4, 0x86

    .line 1210
    .line 1211
    invoke-static {v4, v3, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 1212
    .line 1213
    .line 1214
    move-result v2

    .line 1215
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1216
    .line 1217
    .line 1218
    iget-object v1, v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->d:Landroid/widget/TextView;

    .line 1219
    .line 1220
    const-string v2, "\u5df2\u5bfc\u5165\u5e76\u4fdd\u5b58\u5207\u78cb\u9635\u5bb9\u914d\u7f6e"

    .line 1221
    .line 1222
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    .line 1224
    .line 1225
    const-string v1, "\u5bfc\u5165\u6210\u529f"

    .line 1226
    .line 1227
    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v1

    .line 1231
    :goto_5
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1232
    .line 1233
    .line 1234
    return-void
.end method

.method public final e(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->d:Landroid/widget/TextView;

    const-string p2, "\u5931\u8d25\uff1a\u8bbe\u5907\u6ca1\u6709\u53ef\u7528\u7684\u6587\u4ef6\u9009\u62e9\u5668"

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "\u5931\u8d25\uff1a\u6ca1\u6709\u53ef\u7528\u7684\u6587\u4ef6\u9009\u62e9\u5668"

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public final h(Lcom/sgscq/vpn/v0;I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->j(Lcom/sgscq/vpn/v0;I)V

    invoke-static {p1, p2}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->k(Lcom/sgscq/vpn/v0;I)V

    iget-object p1, p1, Lcom/sgscq/vpn/v0;->a:Lcom/sgscq/vpn/DebugSparringConfig$Slot;

    iget-object p1, p1, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->deputyGeneralIds:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "\u65e0"

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    throw p1
.end method

.method public final i(Ljava/lang/String;FI)Landroid/widget/TextView;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-object v0
.end method

.method public final j(Lcom/sgscq/vpn/v0;I)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sgscq/vpn/v0;

    iget-object v3, v2, Lcom/sgscq/vpn/v0;->a:Lcom/sgscq/vpn/DebugSparringConfig$Slot;

    iget-object v4, v3, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->generalId:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v4, -0x1

    if-eq p2, v4, :cond_2

    :cond_1
    iget-object v4, v3, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->generalId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v4, 0x0

    :goto_0
    iget-object v5, v3, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->deputyGeneralIds:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    if-ne v2, p1, :cond_3

    if-ne v4, p2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v5, v3, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->deputyGeneralIds:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    if-ne p2, v0, :cond_7

    .line 6
    .line 7
    if-eqz p3, :cond_7

    .line 8
    .line 9
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const/16 p3, 0x1005

    .line 22
    .line 23
    const-string v1, "UTF-8"

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-ne p1, p3, :cond_3

    .line 27
    .line 28
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 33
    .line 34
    .line 35
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    :try_start_1
    iget-object p2, p0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b:Lcom/sgscq/vpn/DebugSparringConfig$Config;

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->normalized()Lcom/sgscq/vpn/DebugSparringConfig$Config;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iget-object p3, p0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->c:Landroid/widget/EditText;

    .line 45
    .line 46
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    const/4 v0, 0x1

    .line 55
    :try_start_2
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    .line 64
    .line 65
    .line 66
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    :catch_0
    :try_start_3
    iput v0, p2, Lcom/sgscq/vpn/DebugSparringConfig$Config;->lordLevel:I

    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->toJson()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 81
    .line 82
    .line 83
    const-string p2, "\u914d\u7f6e\u5df2\u5bfc\u51fa"

    .line 84
    .line 85
    invoke-static {p0, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    .line 91
    .line 92
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 93
    .line 94
    .line 95
    goto/16 :goto_3

    .line 96
    .line 97
    :cond_1
    :try_start_5
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    const-string p3, "\u65e0\u6cd5\u6253\u5f00\u5bfc\u51fa\u6587\u4ef6"

    .line 100
    .line 101
    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 105
    :catchall_0
    move-exception p2

    .line 106
    if-eqz p1, :cond_2

    .line 107
    .line 108
    :try_start_6
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :catchall_1
    move-exception p1

    .line 113
    :try_start_7
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    :cond_2
    :goto_0
    throw p2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 117
    :catch_1
    move-exception p1

    .line 118
    iget-object p2, p0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->d:Landroid/widget/TextView;

    .line 119
    .line 120
    new-instance p3, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v0, "\u5bfc\u51fa\u5931\u8d25\uff1a"

    .line 123
    .line 124
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    const-string p1, "\u5bfc\u51fa\u5931\u8d25"

    .line 142
    .line 143
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_3
    const/16 p3, 0x1006

    .line 152
    .line 153
    if-ne p1, p3, :cond_7

    .line 154
    .line 155
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 160
    .line 161
    .line 162
    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 163
    if-eqz p1, :cond_5

    .line 164
    .line 165
    :try_start_9
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    .line 166
    .line 167
    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 168
    .line 169
    .line 170
    const/16 p3, 0x1000

    .line 171
    .line 172
    new-array p3, p3, [B

    .line 173
    .line 174
    :goto_1
    invoke-virtual {p1, p3}, Ljava/io/InputStream;->read([B)I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-eq v3, v0, :cond_4

    .line 179
    .line 180
    invoke-virtual {p2, p3, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_4
    new-instance p3, Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    invoke-direct {p3, p2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, p3}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->c(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 194
    .line 195
    .line 196
    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_5
    :try_start_b
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 201
    .line 202
    const-string p3, "\u65e0\u6cd5\u6253\u5f00\u5bfc\u5165\u6587\u4ef6"

    .line 203
    .line 204
    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 208
    :catchall_2
    move-exception p2

    .line 209
    if-eqz p1, :cond_6

    .line 210
    .line 211
    :try_start_c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 212
    .line 213
    .line 214
    goto :goto_2

    .line 215
    :catchall_3
    move-exception p1

    .line 216
    :try_start_d
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 217
    .line 218
    .line 219
    :cond_6
    :goto_2
    throw p2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 220
    :catch_2
    move-exception p1

    .line 221
    iget-object p2, p0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->d:Landroid/widget/TextView;

    .line 222
    .line 223
    new-instance p3, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    const-string v0, "\u5bfc\u5165\u5931\u8d25\uff1a"

    .line 226
    .line 227
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    .line 243
    .line 244
    const-string p1, "\u5bfc\u5165\u5931\u8d25"

    .line 245
    .line 246
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 251
    .line 252
    .line 253
    :cond_7
    :goto_3
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
