.class public Lcom/sgscq/vpn/MainActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sgscq/vpn/MainActivity$BootReceiver;
    }
.end annotation


# static fields
.field public static final synthetic F:I


# instance fields
.field public final A:Landroid/graphics/drawable/GradientDrawable;

.field public final B:Landroid/graphics/drawable/GradientDrawable;

.field public final C:Landroid/graphics/drawable/GradientDrawable;

.field public final D:Landroid/graphics/drawable/GradientDrawable;

.field public final E:Landroid/graphics/drawable/GradientDrawable;

.field public final a:Lcom/sgscq/vpn/e3;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/Button;

.field public e:Landroid/widget/Button;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/LinearLayout;

.field public h:Landroid/widget/LinearLayout;

.field public i:Ljava/util/List;

.field public j:I

.field public k:Landroid/widget/Button;

.field public l:Landroid/widget/TextView;

.field public final m:Landroid/os/Handler;

.field public final n:Lcom/sgscq/vpn/f3;

.field public o:Lcom/sgscq/vpn/a7;

.field public final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public q:Z

.field public r:Z

.field public volatile s:Z

.field public final t:Lcom/sgscq/vpn/g3;

.field public u:Z

.field public v:Z

.field public w:I

.field public x:I

.field public y:F

.field public final z:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/sgscq/vpn/e3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sgscq/vpn/e3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    iput-object v0, p0, Lcom/sgscq/vpn/MainActivity;->a:Lcom/sgscq/vpn/e3;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sgscq/vpn/MainActivity;->m:Landroid/os/Handler;

    new-instance v0, Lcom/sgscq/vpn/f3;

    invoke-direct {v0, p0, v1}, Lcom/sgscq/vpn/f3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    iput-object v0, p0, Lcom/sgscq/vpn/MainActivity;->n:Lcom/sgscq/vpn/f3;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sgscq/vpn/MainActivity;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/sgscq/vpn/g3;

    invoke-direct {v0, p0}, Lcom/sgscq/vpn/g3;-><init>(Lcom/sgscq/vpn/MainActivity;)V

    iput-object v0, p0, Lcom/sgscq/vpn/MainActivity;->t:Lcom/sgscq/vpn/g3;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/MainActivity;->z:Landroid/graphics/drawable/GradientDrawable;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/MainActivity;->A:Landroid/graphics/drawable/GradientDrawable;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/MainActivity;->B:Landroid/graphics/drawable/GradientDrawable;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/MainActivity;->C:Landroid/graphics/drawable/GradientDrawable;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/MainActivity;->D:Landroid/graphics/drawable/GradientDrawable;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/MainActivity;->E:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/sgscq/vpn/MainActivity;->u:Z

    .line 2
    .line 3
    const-string v1, "\u25cb"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->c:Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->c:Landroid/widget/TextView;

    .line 14
    .line 15
    sget v0, Lcom/sgscq/vpn/p5;->H:I

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->b:Landroid/widget/TextView;

    .line 21
    .line 22
    const-string v0, "\u6b63\u5728\u68c0\u67e5\u672c\u5730\u5b58\u6863\u2026"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->b:Landroid/widget/TextView;

    .line 28
    .line 29
    sget v0, Lcom/sgscq/vpn/p5;->G:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->d:Landroid/widget/Button;

    .line 35
    .line 36
    const-string v0, "\u8bf7\u7a0d\u5019"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->d:Landroid/widget/Button;

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->e:Landroid/widget/Button;

    .line 47
    .line 48
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->e:Landroid/widget/Button;

    .line 52
    .line 53
    sget v0, Lcom/sgscq/vpn/p5;->G:I

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/sgscq/vpn/MainActivity;->d:Landroid/widget/Button;

    .line 60
    .line 61
    iget-boolean v3, p0, Lcom/sgscq/vpn/MainActivity;->v:Z

    .line 62
    .line 63
    const/4 v4, 0x1

    .line 64
    xor-int/2addr v3, v4

    .line 65
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 66
    .line 67
    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->c:Landroid/widget/TextView;

    .line 71
    .line 72
    const-string v0, "\u25cf"

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->c:Landroid/widget/TextView;

    .line 78
    .line 79
    sget v0, Lcom/sgscq/vpn/p5;->E:I

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    .line 83
    .line 84
    sget-boolean p1, Lcom/sgscq/vpn/a1;->d:Z

    .line 85
    .line 86
    if-eqz p1, :cond_1

    .line 87
    .line 88
    const-string p1, "DNS \u5df2\u542f\u52a8 \u2713"

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const-string p1, "DNS \u672a\u542f\u52a8 \u2717"

    .line 92
    .line 93
    :goto_0
    iget-object v0, p0, Lcom/sgscq/vpn/MainActivity;->b:Landroid/widget/TextView;

    .line 94
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v3, "VPN \u8fd0\u884c\u4e2d \u00b7 "

    .line 98
    .line 99
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p1, "\n\u4e09\u56fd\u6740\u4f20\u5947\u5355\u673a\u7248"

    .line 106
    .line 107
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->b:Landroid/widget/TextView;

    .line 118
    .line 119
    sget v0, Lcom/sgscq/vpn/p5;->F:I

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->d:Landroid/widget/Button;

    .line 125
    .line 126
    const-string v0, "\u65ad\u5f00 VPN"

    .line 127
    .line 128
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->d:Landroid/widget/Button;

    .line 132
    .line 133
    const-string v0, "#FFFFFF"

    .line 134
    .line 135
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->z:Landroid/graphics/drawable/GradientDrawable;

    .line 143
    .line 144
    sget v0, Lcom/sgscq/vpn/p5;->D:I

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->C:Landroid/graphics/drawable/GradientDrawable;

    .line 150
    .line 151
    sget v0, Lcom/sgscq/vpn/p5;->D:I

    .line 152
    .line 153
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->d:Landroid/widget/Button;

    .line 157
    .line 158
    new-instance v0, Lcom/sgscq/vpn/h3;

    .line 159
    .line 160
    invoke-direct {v0, p0, v2}, Lcom/sgscq/vpn/h3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->e:Landroid/widget/Button;

    .line 167
    .line 168
    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->e:Landroid/widget/Button;

    .line 172
    .line 173
    sget v0, Lcom/sgscq/vpn/p5;->B:I

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_2
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->c:Landroid/widget/TextView;

    .line 177
    .line 178
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->c:Landroid/widget/TextView;

    .line 182
    .line 183
    sget v0, Lcom/sgscq/vpn/p5;->H:I

    .line 184
    .line 185
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    .line 187
    .line 188
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->b:Landroid/widget/TextView;

    .line 189
    .line 190
    const-string v0, "VPN \u672a\u542f\u52a8\n\u70b9\u51fb\u8fde\u63a5\u5f00\u59cb\u6e38\u620f"

    .line 191
    .line 192
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->b:Landroid/widget/TextView;

    .line 196
    .line 197
    sget v0, Lcom/sgscq/vpn/p5;->G:I

    .line 198
    .line 199
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    .line 201
    .line 202
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->d:Landroid/widget/Button;

    .line 203
    .line 204
    const-string v0, "\u8fde\u63a5 VPN"

    .line 205
    .line 206
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    .line 208
    .line 209
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->d:Landroid/widget/Button;

    .line 210
    .line 211
    sget v0, Lcom/sgscq/vpn/p5;->x:I

    .line 212
    .line 213
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->z:Landroid/graphics/drawable/GradientDrawable;

    .line 217
    .line 218
    sget v0, Lcom/sgscq/vpn/p5;->B:I

    .line 219
    .line 220
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 221
    .line 222
    .line 223
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->C:Landroid/graphics/drawable/GradientDrawable;

    .line 224
    .line 225
    sget v0, Lcom/sgscq/vpn/p5;->B:I

    .line 226
    .line 227
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 228
    .line 229
    .line 230
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->d:Landroid/widget/Button;

    .line 231
    .line 232
    new-instance v0, Lcom/sgscq/vpn/h3;

    .line 233
    .line 234
    invoke-direct {v0, p0, v4}, Lcom/sgscq/vpn/h3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    .line 239
    .line 240
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->e:Landroid/widget/Button;

    .line 241
    .line 242
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 243
    .line 244
    .line 245
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->e:Landroid/widget/Button;

    .line 246
    .line 247
    sget v0, Lcom/sgscq/vpn/p5;->G:I

    .line 248
    .line 249
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    .line 251
    .line 252
    return-void
.end method

.method public final b()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/sgscq/vpn/MainActivity;->h:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    sget-object v3, Lcom/sgscq/vpn/p5;->e:[Ljava/lang/String;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    move v5, v4

    .line 24
    :goto_0
    const/4 v6, 0x5

    .line 25
    if-ge v5, v6, :cond_1

    .line 26
    .line 27
    aget-object v6, v3, v5

    .line 28
    .line 29
    :try_start_0
    invoke-virtual {v2, v6, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    new-instance v9, Lcom/sgscq/vpn/n3;

    .line 46
    .line 47
    invoke-direct {v9, v6, v8, v7}, Lcom/sgscq/vpn/n3;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    :catch_0
    add-int/lit8 v5, v5, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    const/4 v3, -0x1

    .line 61
    const/4 v5, -0x2

    .line 62
    const/16 v6, 0x11

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    new-instance v1, Landroid/widget/TextView;

    .line 67
    .line 68
    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    const-string v2, "\u672a\u627e\u5230\u5df2\u5b89\u88c5\u7684\u6e38\u620f"

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    const/high16 v2, 0x41400000    # 12.0f

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 79
    .line 80
    .line 81
    sget v2, Lcom/sgscq/vpn/p5;->H:I

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 87
    .line 88
    .line 89
    iget-object v2, v0, Lcom/sgscq/vpn/MainActivity;->h:Landroid/widget/LinearLayout;

    .line 90
    .line 91
    invoke-static {v3, v5, v4, v4, v4}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_2
    new-instance v2, Landroid/widget/HorizontalScrollView;

    .line 100
    .line 101
    invoke-direct {v2, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v4}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 105
    .line 106
    .line 107
    new-instance v7, Landroid/widget/LinearLayout;

    .line 108
    .line 109
    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 113
    .line 114
    .line 115
    const/4 v8, 0x4

    .line 116
    invoke-static {v8, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    invoke-static {v8, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    invoke-virtual {v7, v9, v4, v8, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 125
    .line 126
    .line 127
    const/16 v8, 0x38

    .line 128
    .line 129
    invoke-static {v8, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    const/16 v9, 0xa

    .line 134
    .line 135
    invoke-static {v9, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 136
    .line 137
    .line 138
    move-result v10

    .line 139
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v11

    .line 147
    if-eqz v11, :cond_4

    .line 148
    .line 149
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    check-cast v11, Lcom/sgscq/vpn/n3;

    .line 154
    .line 155
    new-instance v12, Landroid/widget/LinearLayout;

    .line 156
    .line 157
    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 158
    .line 159
    .line 160
    const/4 v13, 0x1

    .line 161
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v12, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 165
    .line 166
    .line 167
    const/4 v14, 0x6

    .line 168
    invoke-static {v14, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 169
    .line 170
    .line 171
    move-result v15

    .line 172
    invoke-static {v14, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    invoke-virtual {v12, v10, v15, v10, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 177
    .line 178
    .line 179
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 180
    .line 181
    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 185
    .line 186
    .line 187
    invoke-static {v9, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 188
    .line 189
    .line 190
    move-result v15

    .line 191
    int-to-float v15, v15

    .line 192
    invoke-virtual {v3, v15}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 193
    .line 194
    .line 195
    sget v15, Lcom/sgscq/vpn/p5;->y:I

    .line 196
    .line 197
    invoke-virtual {v3, v15}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v12, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 201
    .line 202
    .line 203
    new-instance v15, Landroid/widget/ImageView;

    .line 204
    .line 205
    invoke-direct {v15, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 206
    .line 207
    .line 208
    iget-object v14, v11, Lcom/sgscq/vpn/n3;->c:Landroid/graphics/drawable/Drawable;

    .line 209
    .line 210
    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    .line 212
    .line 213
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 214
    .line 215
    invoke-direct {v14, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v12, v15, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    .line 220
    .line 221
    new-instance v14, Landroid/widget/TextView;

    .line 222
    .line 223
    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 224
    .line 225
    .line 226
    iget-object v15, v11, Lcom/sgscq/vpn/n3;->b:Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    .line 230
    .line 231
    int-to-float v15, v9

    .line 232
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 233
    .line 234
    .line 235
    sget v15, Lcom/sgscq/vpn/p5;->G:I

    .line 236
    .line 237
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 241
    .line 242
    .line 243
    const/16 v15, 0x50

    .line 244
    .line 245
    invoke-static {v15, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 246
    .line 247
    .line 248
    move-result v15

    .line 249
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 250
    .line 251
    .line 252
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 253
    .line 254
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 258
    .line 259
    .line 260
    const/4 v15, 0x2

    .line 261
    invoke-static {v15, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 262
    .line 263
    .line 264
    move-result v15

    .line 265
    invoke-static {v5, v5, v4, v15, v4}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 266
    .line 267
    .line 268
    move-result-object v15

    .line 269
    invoke-virtual {v12, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    .line 271
    .line 272
    iget-object v14, v11, Lcom/sgscq/vpn/n3;->a:Ljava/lang/String;

    .line 273
    .line 274
    sget-boolean v15, Lcom/sgscq/vpn/SgscqVpnService;->m:Z

    .line 275
    .line 276
    if-eqz v15, :cond_3

    .line 277
    .line 278
    new-instance v15, Lcom/sgscq/vpn/i1;

    .line 279
    .line 280
    invoke-direct {v15, v0, v14, v13}, Lcom/sgscq/vpn/i1;-><init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v12, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    .line 285
    .line 286
    goto :goto_2

    .line 287
    :cond_3
    const v13, 0x3ecccccd    # 0.4f

    .line 288
    .line 289
    .line 290
    invoke-virtual {v12, v13}, Landroid/view/View;->setAlpha(F)V

    .line 291
    .line 292
    .line 293
    new-instance v13, Lcom/sgscq/vpn/h3;

    .line 294
    .line 295
    const/4 v14, 0x6

    .line 296
    invoke-direct {v13, v0, v14}, Lcom/sgscq/vpn/h3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    .line 301
    .line 302
    :goto_2
    new-instance v13, Lcom/sgscq/vpn/i3;

    .line 303
    .line 304
    invoke-direct {v13, v0, v11}, Lcom/sgscq/vpn/i3;-><init>(Lcom/sgscq/vpn/MainActivity;Lcom/sgscq/vpn/n3;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v12, v13}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 308
    .line 309
    .line 310
    sget v11, Lcom/sgscq/vpn/p5;->y:I

    .line 311
    .line 312
    invoke-static {v9, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 313
    .line 314
    .line 315
    move-result v13

    .line 316
    int-to-float v13, v13

    .line 317
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 318
    .line 319
    .line 320
    move-result-object v14

    .line 321
    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 322
    .line 323
    .line 324
    move-result-object v14

    .line 325
    iget v14, v14, Landroid/util/DisplayMetrics;->density:F

    .line 326
    .line 327
    invoke-static {v11, v13, v14}, Lcom/sgscq/vpn/p5;->y0(IFF)Landroid/graphics/drawable/GradientDrawable;

    .line 328
    .line 329
    .line 330
    move-result-object v11

    .line 331
    invoke-static {v12, v3, v11}, Lcom/sgscq/vpn/p5;->j(Landroid/widget/LinearLayout;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)V

    .line 332
    .line 333
    .line 334
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 335
    .line 336
    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 337
    .line 338
    .line 339
    const/16 v11, 0x8

    .line 340
    .line 341
    invoke-static {v11, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 342
    .line 343
    .line 344
    move-result v11

    .line 345
    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 346
    .line 347
    invoke-virtual {v7, v12, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    .line 349
    .line 350
    const/4 v3, -0x1

    .line 351
    goto/16 :goto_1

    .line 352
    .line 353
    :cond_4
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 354
    .line 355
    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v2, v7, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    .line 360
    .line 361
    iget-object v1, v0, Lcom/sgscq/vpn/MainActivity;->h:Landroid/widget/LinearLayout;

    .line 362
    .line 363
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 364
    .line 365
    const/4 v4, -0x1

    .line 366
    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    .line 371
    .line 372
    return-void
.end method

.method public final c(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget v1, p0, Lcom/sgscq/vpn/MainActivity;->x:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    if-eq v1, p1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public final d()Ljava/security/PublicKey;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "encrypted/public_key.pem"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "-----"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/MainActivity;->f:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sgscq/vpn/MainActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sgscq/vpn/MainActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    iget-object v2, p0, Lcom/sgscq/vpn/MainActivity;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sgscq/vpn/MainActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0xc

    if-le v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public final f()V
    .locals 7

    .line 1
    const-string v0, "sgscq_config_v2"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const-string v3, "vpn_was_running"

    .line 9
    .line 10
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    sget-boolean v3, Lcom/sgscq/vpn/SgscqVpnService;->m:Z

    .line 15
    .line 16
    invoke-static {p0}, Lcom/sgscq/vpn/p5;->k0(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/4 v5, 0x1

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-nez v3, :cond_1

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    :goto_0
    move v0, v1

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    if-eqz v2, :cond_2

    .line 31
    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    move v4, v5

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    move v4, v1

    .line 37
    :goto_1
    if-eqz v4, :cond_3

    .line 38
    .line 39
    move v0, v5

    .line 40
    goto :goto_2

    .line 41
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v4, "keepalive_prompted_for"

    .line 50
    .line 51
    const-string v6, ""

    .line 52
    .line 53
    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v4, "1.0.1.14067"

    .line 58
    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    xor-int/2addr v0, v5

    .line 64
    :goto_2
    if-nez v0, :cond_4

    .line 65
    .line 66
    return-void

    .line 67
    :cond_4
    if-eqz v2, :cond_5

    .line 68
    .line 69
    if-nez v3, :cond_5

    .line 70
    .line 71
    move v1, v5

    .line 72
    :cond_5
    if-eqz v1, :cond_6

    .line 73
    .line 74
    const-string v0, "\u68c0\u6d4b\u5230 VPN \u88ab\u7cfb\u7edf\u6e05\u7406\uff0c\u5efa\u8bae\u6309\u63d0\u793a\u653e\u5f00\u540e\u53f0\u9650\u5236"

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/MainActivity;->e(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_6
    invoke-static {p0}, Lcom/sgscq/vpn/p5;->m1(Landroid/app/Activity;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final g(Ljava/lang/String;Lcom/sgscq/vpn/h3;)Landroid/widget/Button;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/Button;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    const/high16 p1, 0x41600000    # 14.0f

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 22
    .line 23
    .line 24
    const/16 v1, 0xc

    .line 25
    .line 26
    invoke-static {v1, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-static {v1, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0, v2, p1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method public final h()V
    .locals 14

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "afdian/top100.json"

    .line 7
    .line 8
    :goto_0
    const-string v2, "/"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v1, "https://api.sgscq.com/api/v1/public/supporters/top100"

    .line 23
    .line 24
    filled-new-array {v1}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    move v5, v2

    .line 31
    :goto_1
    if-ge v5, v3, :cond_7

    .line 32
    .line 33
    aget-object v4, v1, v5

    .line 34
    .line 35
    :try_start_0
    new-instance v6, Lcom/sgscq/vpn/j;

    .line 36
    .line 37
    invoke-direct {v6, v4, v3}, Lcom/sgscq/vpn/j;-><init>(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    invoke-static {v6}, Lcom/sgscq/vpn/p5;->O(Lq/l;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    .line 46
    const-string v1, "supporters"

    .line 47
    .line 48
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_6

    .line 53
    .line 54
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-ge v2, v4, :cond_3

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const-string v5, "name"

    .line 65
    .line 66
    const-string v6, ""

    .line 67
    .line 68
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    const-string v7, "display_name"

    .line 73
    .line 74
    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    const-string v7, "user_id"

    .line 79
    .line 80
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v11

    .line 84
    const-string v7, "avatar_key"

    .line 85
    .line 86
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    const-string v7, "avatar"

    .line 91
    .line 92
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    const-string v6, "amount"

    .line 97
    .line 98
    const-wide/16 v7, 0x0

    .line 99
    .line 100
    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 101
    .line 102
    .line 103
    move-result-wide v12

    .line 104
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_1

    .line 109
    .line 110
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_1

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_1
    new-instance v4, Lcom/sgscq/vpn/o3;

    .line 118
    .line 119
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-eqz v6, :cond_2

    .line 124
    .line 125
    move-object v9, v11

    .line 126
    goto :goto_3

    .line 127
    :cond_2
    move-object v9, v5

    .line 128
    :goto_3
    move-object v8, v4

    .line 129
    invoke-direct/range {v8 .. v13}, Lcom/sgscq/vpn/o3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    :catch_0
    :cond_4
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_5

    .line 147
    .line 148
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    check-cast v2, Lcom/sgscq/vpn/o3;

    .line 153
    .line 154
    iget-object v4, v2, Lcom/sgscq/vpn/o3;->b:Ljava/lang/String;

    .line 155
    .line 156
    if-eqz v4, :cond_4

    .line 157
    .line 158
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-nez v4, :cond_4

    .line 163
    .line 164
    iget-object v4, v2, Lcom/sgscq/vpn/o3;->f:Landroid/graphics/Bitmap;

    .line 165
    .line 166
    if-nez v4, :cond_4

    .line 167
    .line 168
    :try_start_1
    new-instance v4, Lcom/sgscq/vpn/y0;

    .line 169
    .line 170
    invoke-direct {v4, v2, v3}, Lcom/sgscq/vpn/y0;-><init>(Ljava/lang/Object;I)V

    .line 171
    .line 172
    .line 173
    invoke-static {v4}, Lcom/sgscq/vpn/p5;->O(Lq/l;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    check-cast v4, Landroid/graphics/Bitmap;

    .line 178
    .line 179
    if-eqz v4, :cond_4

    .line 180
    .line 181
    iput-object v4, v2, Lcom/sgscq/vpn/o3;->f:Landroid/graphics/Bitmap;

    .line 182
    .line 183
    invoke-virtual {p0, v4}, Lcom/sgscq/vpn/MainActivity;->c(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    iput-object v4, v2, Lcom/sgscq/vpn/o3;->e:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_5
    iput-object v0, p0, Lcom/sgscq/vpn/MainActivity;->i:Ljava/util/List;

    .line 191
    .line 192
    new-instance v1, Lcom/sgscq/vpn/d;

    .line 193
    .line 194
    const/16 v2, 0xa

    .line 195
    .line 196
    invoke-direct {v1, p0, v0, v2}, Lcom/sgscq/vpn/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :cond_6
    new-instance v0, Ljava/lang/Exception;

    .line 204
    .line 205
    const-string v1, "supporters response missing supporters"

    .line 206
    .line 207
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw v0

    .line 211
    :catch_1
    move-exception v4

    .line 212
    add-int/lit8 v5, v5, 0x1

    .line 213
    .line 214
    goto/16 :goto_1

    .line 215
    .line 216
    :cond_7
    if-eqz v4, :cond_8

    .line 217
    .line 218
    goto :goto_6

    .line 219
    :cond_8
    new-instance v4, Ljava/lang/Exception;

    .line 220
    .line 221
    const-string v0, "\u8d5e\u52a9\u5feb\u7167\u4e0d\u53ef\u7528"

    .line 222
    .line 223
    invoke-direct {v4, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :goto_6
    throw v4
.end method

.method public final i()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/sgscq/vpn/MainActivity;->g:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/sgscq/vpn/MainActivity;->i:Ljava/util/List;

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    const/16 v3, 0x11

    .line 12
    .line 13
    const/4 v4, -0x2

    .line 14
    const/4 v5, 0x0

    .line 15
    if-eqz v1, :cond_9

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto/16 :goto_5

    .line 24
    .line 25
    :cond_0
    iget v1, v0, Lcom/sgscq/vpn/MainActivity;->w:I

    .line 26
    .line 27
    const/16 v6, 0x8

    .line 28
    .line 29
    invoke-static {v6, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    iget-object v7, v0, Lcom/sgscq/vpn/MainActivity;->g:Landroid/widget/LinearLayout;

    .line 34
    .line 35
    if-nez v7, :cond_1

    .line 36
    .line 37
    move v7, v5

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-lez v7, :cond_2

    .line 44
    .line 45
    iput v7, v0, Lcom/sgscq/vpn/MainActivity;->j:I

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget v7, v0, Lcom/sgscq/vpn/MainActivity;->j:I

    .line 49
    .line 50
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    :goto_0
    const/4 v8, 0x1

    .line 55
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    add-int/2addr v10, v9

    .line 64
    if-gtz v7, :cond_3

    .line 65
    .line 66
    move v6, v8

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    add-int/2addr v6, v7

    .line 73
    div-int/2addr v6, v10

    .line 74
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    :goto_1
    iget v9, v0, Lcom/sgscq/vpn/MainActivity;->x:I

    .line 79
    .line 80
    if-nez v7, :cond_4

    .line 81
    .line 82
    iget-object v7, v0, Lcom/sgscq/vpn/MainActivity;->g:Landroid/widget/LinearLayout;

    .line 83
    .line 84
    new-instance v10, Lcom/sgscq/vpn/f3;

    .line 85
    .line 86
    const/16 v11, 0xc

    .line 87
    .line 88
    invoke-direct {v10, v0, v11}, Lcom/sgscq/vpn/f3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7, v10}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 92
    .line 93
    .line 94
    :cond_4
    const/4 v7, 0x0

    .line 95
    move v10, v5

    .line 96
    :goto_2
    iget-object v11, v0, Lcom/sgscq/vpn/MainActivity;->i:Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    if-ge v10, v11, :cond_8

    .line 103
    .line 104
    rem-int v11, v10, v6

    .line 105
    .line 106
    if-nez v11, :cond_5

    .line 107
    .line 108
    new-instance v7, Landroid/widget/LinearLayout;

    .line 109
    .line 110
    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 117
    .line 118
    .line 119
    iget-object v11, v0, Lcom/sgscq/vpn/MainActivity;->g:Landroid/widget/LinearLayout;

    .line 120
    .line 121
    const/4 v12, 0x3

    .line 122
    invoke-static {v12, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 123
    .line 124
    .line 125
    move-result v12

    .line 126
    invoke-static {v2, v4, v5, v12, v5}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 127
    .line 128
    .line 129
    move-result-object v12

    .line 130
    invoke-virtual {v11, v7, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    .line 132
    .line 133
    :cond_5
    iget-object v11, v0, Lcom/sgscq/vpn/MainActivity;->i:Ljava/util/List;

    .line 134
    .line 135
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v11

    .line 139
    check-cast v11, Lcom/sgscq/vpn/o3;

    .line 140
    .line 141
    new-instance v12, Landroid/widget/LinearLayout;

    .line 142
    .line 143
    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 150
    .line 151
    .line 152
    const/4 v13, 0x6

    .line 153
    invoke-static {v13, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 154
    .line 155
    .line 156
    move-result v14

    .line 157
    invoke-static {v13, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 158
    .line 159
    .line 160
    move-result v15

    .line 161
    invoke-static {v13, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    invoke-static {v13, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    invoke-virtual {v12, v14, v15, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 170
    .line 171
    .line 172
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 173
    .line 174
    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 178
    .line 179
    .line 180
    const/16 v4, 0xa

    .line 181
    .line 182
    invoke-static {v4, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 183
    .line 184
    .line 185
    move-result v14

    .line 186
    int-to-float v14, v14

    .line 187
    invoke-virtual {v3, v14}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 188
    .line 189
    .line 190
    sget v14, Lcom/sgscq/vpn/p5;->y:I

    .line 191
    .line 192
    invoke-virtual {v3, v14}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v12, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    .line 197
    .line 198
    new-instance v14, Landroid/widget/ImageView;

    .line 199
    .line 200
    invoke-direct {v14, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 201
    .line 202
    .line 203
    iget-object v15, v11, Lcom/sgscq/vpn/o3;->f:Landroid/graphics/Bitmap;

    .line 204
    .line 205
    const/high16 v16, 0x40000000    # 2.0f

    .line 206
    .line 207
    iget-object v11, v11, Lcom/sgscq/vpn/o3;->a:Ljava/lang/String;

    .line 208
    .line 209
    if-eqz v15, :cond_6

    .line 210
    .line 211
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 212
    .line 213
    invoke-static {v9, v9, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 214
    .line 215
    .line 216
    move-result-object v13

    .line 217
    new-instance v5, Landroid/graphics/Canvas;

    .line 218
    .line 219
    invoke-direct {v5, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 220
    .line 221
    .line 222
    new-instance v2, Landroid/graphics/Paint;

    .line 223
    .line 224
    invoke-direct {v2, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 225
    .line 226
    .line 227
    int-to-float v4, v9

    .line 228
    div-float v4, v4, v16

    .line 229
    .line 230
    invoke-virtual {v5, v4, v4, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 231
    .line 232
    .line 233
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    .line 234
    .line 235
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 236
    .line 237
    invoke-direct {v4, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 241
    .line 242
    .line 243
    const/4 v4, 0x1

    .line 244
    invoke-static {v15, v9, v9, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 245
    .line 246
    .line 247
    move-result-object v8

    .line 248
    const/4 v15, 0x0

    .line 249
    invoke-virtual {v5, v8, v15, v15, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 253
    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_6
    move v4, v8

    .line 257
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 258
    .line 259
    invoke-static {v9, v9, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    new-instance v5, Landroid/graphics/Canvas;

    .line 264
    .line 265
    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 266
    .line 267
    .line 268
    new-instance v8, Landroid/graphics/Paint;

    .line 269
    .line 270
    invoke-direct {v8, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 274
    .line 275
    .line 276
    move-result v4

    .line 277
    const/16 v13, 0xa

    .line 278
    .line 279
    new-array v15, v13, [I

    .line 280
    .line 281
    fill-array-data v15, :array_0

    .line 282
    .line 283
    .line 284
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    rem-int/2addr v4, v13

    .line 289
    aget v4, v15, v4

    .line 290
    .line 291
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 292
    .line 293
    .line 294
    int-to-float v4, v9

    .line 295
    div-float v13, v4, v16

    .line 296
    .line 297
    invoke-virtual {v5, v13, v13, v13, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 298
    .line 299
    .line 300
    new-instance v8, Landroid/graphics/Paint;

    .line 301
    .line 302
    const/4 v15, 0x1

    .line 303
    invoke-direct {v8, v15}, Landroid/graphics/Paint;-><init>(I)V

    .line 304
    .line 305
    .line 306
    const/4 v15, -0x1

    .line 307
    invoke-virtual {v8, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 308
    .line 309
    .line 310
    const/high16 v15, 0x3f000000    # 0.5f

    .line 311
    .line 312
    mul-float/2addr v4, v15

    .line 313
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 314
    .line 315
    .line 316
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 317
    .line 318
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    if-eqz v4, :cond_7

    .line 326
    .line 327
    const-string v4, "?"

    .line 328
    .line 329
    goto :goto_3

    .line 330
    :cond_7
    const/4 v4, 0x1

    .line 331
    const/4 v15, 0x0

    .line 332
    invoke-virtual {v11, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v17

    .line 336
    move-object/from16 v4, v17

    .line 337
    .line 338
    :goto_3
    invoke-virtual {v8}, Landroid/graphics/Paint;->descent()F

    .line 339
    .line 340
    .line 341
    move-result v15

    .line 342
    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    .line 343
    .line 344
    .line 345
    move-result v17

    .line 346
    add-float v17, v17, v15

    .line 347
    .line 348
    div-float v17, v17, v16

    .line 349
    .line 350
    sub-float v15, v13, v17

    .line 351
    .line 352
    invoke-virtual {v5, v4, v13, v15, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 356
    .line 357
    .line 358
    :goto_4
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 359
    .line 360
    invoke-direct {v2, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v12, v14, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    .line 365
    .line 366
    new-instance v2, Landroid/widget/TextView;

    .line 367
    .line 368
    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    .line 373
    .line 374
    iget v4, v0, Lcom/sgscq/vpn/MainActivity;->y:F

    .line 375
    .line 376
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 377
    .line 378
    .line 379
    sget v4, Lcom/sgscq/vpn/p5;->G:I

    .line 380
    .line 381
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    .line 383
    .line 384
    const/16 v4, 0x11

    .line 385
    .line 386
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 387
    .line 388
    .line 389
    const/4 v4, 0x6

    .line 390
    invoke-static {v4, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 391
    .line 392
    .line 393
    move-result v4

    .line 394
    sub-int v4, v1, v4

    .line 395
    .line 396
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 397
    .line 398
    .line 399
    const/4 v4, 0x0

    .line 400
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBreakStrategy(I)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    .line 407
    .line 408
    .line 409
    const/4 v5, 0x1

    .line 410
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 411
    .line 412
    .line 413
    move-result v8

    .line 414
    const/4 v11, -0x2

    .line 415
    invoke-static {v11, v11, v4, v8, v4}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 416
    .line 417
    .line 418
    move-result-object v8

    .line 419
    invoke-virtual {v12, v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    .line 421
    .line 422
    sget v2, Lcom/sgscq/vpn/p5;->y:I

    .line 423
    .line 424
    const/16 v8, 0xa

    .line 425
    .line 426
    invoke-static {v8, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 427
    .line 428
    .line 429
    move-result v8

    .line 430
    int-to-float v8, v8

    .line 431
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 432
    .line 433
    .line 434
    move-result-object v13

    .line 435
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 436
    .line 437
    .line 438
    move-result-object v13

    .line 439
    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    .line 440
    .line 441
    invoke-static {v2, v8, v13}, Lcom/sgscq/vpn/p5;->y0(IFF)Landroid/graphics/drawable/GradientDrawable;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    invoke-static {v12, v3, v2}, Lcom/sgscq/vpn/p5;->j(Landroid/widget/LinearLayout;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)V

    .line 446
    .line 447
    .line 448
    invoke-static {v1, v11, v4, v4, v4}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    const/4 v3, 0x4

    .line 453
    invoke-static {v3, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 454
    .line 455
    .line 456
    move-result v4

    .line 457
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 458
    .line 459
    invoke-static {v3, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 460
    .line 461
    .line 462
    move-result v3

    .line 463
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 464
    .line 465
    invoke-virtual {v7, v12, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    .line 467
    .line 468
    add-int/lit8 v10, v10, 0x1

    .line 469
    .line 470
    move v8, v5

    .line 471
    const/4 v2, -0x1

    .line 472
    const/16 v3, 0x11

    .line 473
    .line 474
    const/4 v4, -0x2

    .line 475
    const/4 v5, 0x0

    .line 476
    goto/16 :goto_2

    .line 477
    .line 478
    :cond_8
    return-void

    .line 479
    :cond_9
    :goto_5
    new-instance v1, Landroid/widget/TextView;

    .line 480
    .line 481
    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 482
    .line 483
    .line 484
    const-string v2, "\u6682\u65e0\u8d5e\u52a9\u8bb0\u5f55\n\u6210\u4e3a\u7b2c\u4e00\u4f4d\u652f\u6301\u8005\u5427\uff01"

    .line 485
    .line 486
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    .line 488
    .line 489
    const/high16 v2, 0x41200000    # 10.0f

    .line 490
    .line 491
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 492
    .line 493
    .line 494
    sget v2, Lcom/sgscq/vpn/p5;->G:I

    .line 495
    .line 496
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 497
    .line 498
    .line 499
    const/16 v2, 0x11

    .line 500
    .line 501
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 502
    .line 503
    .line 504
    iget-object v2, v0, Lcom/sgscq/vpn/MainActivity;->g:Landroid/widget/LinearLayout;

    .line 505
    .line 506
    const/4 v3, -0x1

    .line 507
    const/4 v4, -0x2

    .line 508
    const/4 v5, 0x0

    .line 509
    invoke-static {v3, v4, v5, v5, v5}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 510
    .line 511
    .line 512
    move-result-object v3

    .line 513
    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    .line 515
    .line 516
    return-void

    .line 517
    :array_0
    .array-data 4
        -0x16e19d
        -0x63d850
        -0xc0ae4b
        -0xfc560c
        -0xff6978
        -0xb350b0
        -0x6800
        -0x86aab8
        -0x9f8275
        -0xbbcca
    .end array-data
.end method

.method public final j()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->m:Landroid/os/Handler;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/sgscq/vpn/MainActivity;->n:Lcom/sgscq/vpn/f3;

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, v1, Lcom/sgscq/vpn/MainActivity;->s:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v2, Lp/l;->p:Lp/l;

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/MainActivity;->n()V

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/MainActivity;->l()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const/4 v3, 0x1

    .line 27
    :try_start_0
    sget-boolean v0, Lcom/sgscq/vpn/c7;->i:Z

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/MainActivity;->m()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    const-wide/16 v6, 0x3e8

    .line 44
    .line 45
    div-long v6, v4, v6

    .line 46
    .line 47
    invoke-static/range {p0 .. p0}, Lp/d;->b(Landroid/content/Context;)Lp/d;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-virtual {v8, v4, v5}, Lp/d;->d(J)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    invoke-virtual {v0, v6, v7}, Lcom/sgscq/vpn/w1;->g1(J)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 60
    .line 61
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_3

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    check-cast v7, Ljava/util/Map;

    .line 79
    .line 80
    const-string v9, "general_id"

    .line 81
    .line 82
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    invoke-interface {v6, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    const/4 v7, 0x0

    .line 99
    const/4 v9, 0x0

    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    new-instance v0, Lcom/sgscq/vpn/f3;

    .line 103
    .line 104
    const/4 v6, 0x3

    .line 105
    invoke-direct {v0, v1, v6}, Lcom/sgscq/vpn/f3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v4, v5, v0}, Lp/l;->i(JLcom/sgscq/vpn/f3;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    .line 115
    .line 116
    const-string v4, "\u6b63\u5728\u52a0\u8f7d\u9650\u65f6\u6b66\u5c06\u2026"

    .line 117
    .line 118
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    .line 122
    .line 123
    const-string v4, "\u6b63\u5728\u52a0\u8f7d\u9650\u65f6\u6b66\u5c06"

    .line 124
    .line 125
    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    .line 129
    .line 130
    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    .line 134
    .line 135
    invoke-virtual {v0, v7}, Landroid/view/View;->setClickable(Z)V

    .line 136
    .line 137
    .line 138
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    .line 139
    .line 140
    invoke-virtual {v0, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/MainActivity;->m()V

    .line 145
    .line 146
    .line 147
    :goto_2
    return-void

    .line 148
    :cond_5
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 149
    .line 150
    const-string v10, "MM-dd HH:mm"

    .line 151
    .line 152
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 153
    .line 154
    .line 155
    move-result-object v11

    .line 156
    invoke-direct {v0, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 157
    .line 158
    .line 159
    new-instance v10, Ljava/util/ArrayList;

    .line 160
    .line 161
    const/4 v11, 0x2

    .line 162
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    .line 164
    .line 165
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v11

    .line 173
    if-eqz v11, :cond_8

    .line 174
    .line 175
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v11

    .line 179
    check-cast v11, Lp/a;

    .line 180
    .line 181
    iget-object v12, v11, Lp/a;->c:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v6, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v12

    .line 187
    check-cast v12, Ljava/util/Map;

    .line 188
    .line 189
    if-nez v12, :cond_6

    .line 190
    .line 191
    iput-boolean v3, v2, Lp/l;->l:Z

    .line 192
    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/MainActivity;->m()V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :cond_6
    invoke-virtual {v11, v4, v5}, Lp/a;->a(J)Z

    .line 198
    .line 199
    .line 200
    move-result v13

    .line 201
    if-eqz v13, :cond_7

    .line 202
    .line 203
    const-string v13, "\u2605\u5f53\u524d\uff1a"

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_7
    const-string v13, "\u4e0b\u4e00\u4e2a\uff1a"

    .line 207
    .line 208
    :goto_4
    new-instance v14, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v13, "general_name"

    .line 217
    .line 218
    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v13

    .line 222
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v13, "  \u6218\u529b:"

    .line 226
    .line 227
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string v13, "fighting"

    .line 231
    .line 232
    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v12

    .line 236
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v12, "  \u5f00\u653e:"

    .line 240
    .line 241
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    new-instance v12, Ljava/util/Date;

    .line 245
    .line 246
    move-object v15, v8

    .line 247
    iget-wide v7, v11, Lp/a;->e:J

    .line 248
    .line 249
    invoke-direct {v12, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-object v8, v15

    .line 267
    const/4 v7, 0x0

    .line 268
    goto :goto_3

    .line 269
    :cond_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    if-ne v0, v3, :cond_a

    .line 274
    .line 275
    new-instance v0, Lcom/sgscq/vpn/f3;

    .line 276
    .line 277
    const/4 v6, 0x4

    .line 278
    invoke-direct {v0, v1, v6}, Lcom/sgscq/vpn/f3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2, v4, v5, v0}, Lp/l;->i(JLcom/sgscq/vpn/f3;)Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-eqz v0, :cond_9

    .line 286
    .line 287
    const-string v0, "\u4e0b\u4e00\u4e2a\uff1a\u6b63\u5728\u52a0\u8f7d\u2026"

    .line 288
    .line 289
    goto :goto_5

    .line 290
    :cond_9
    const-string v0, "\u4e0b\u4e00\u4e2a\uff1a\u7b49\u5f85\u670d\u52a1\u7aef\u66f4\u65b0\uff08\u81ea\u52a8\u91cd\u8bd5\uff09"

    .line 291
    .line 292
    :goto_5
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/MainActivity;->l()V

    .line 296
    .line 297
    .line 298
    :cond_a
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    .line 299
    .line 300
    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    .line 302
    .line 303
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    .line 304
    .line 305
    const/4 v4, 0x0

    .line 306
    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 307
    .line 308
    .line 309
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    .line 310
    .line 311
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 312
    .line 313
    .line 314
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    .line 315
    .line 316
    invoke-virtual {v0, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 317
    .line 318
    .line 319
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    .line 320
    .line 321
    new-instance v4, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .line 325
    .line 326
    const/4 v5, 0x0

    .line 327
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v5

    .line 331
    check-cast v5, Ljava/lang/String;

    .line 332
    .line 333
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v5, "\n"

    .line 337
    .line 338
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    check-cast v5, Ljava/lang/String;

    .line 346
    .line 347
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .line 356
    .line 357
    goto :goto_6

    .line 358
    :catch_0
    move-exception v0

    .line 359
    new-instance v4, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    const-string v5, "[LimitedSchedule] \u52a0\u8f7d\u9650\u65f6\u5217\u8868\u5931\u8d25: "

    .line 362
    .line 363
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v5

    .line 370
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    const-string v5, "SGSCQ_UI"

    .line 378
    .line 379
    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    .line 381
    .line 382
    iput-boolean v3, v2, Lp/l;->l:Z

    .line 383
    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/MainActivity;->m()V

    .line 385
    .line 386
    .line 387
    :goto_6
    return-void
.end method

.method public final k()V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/sgscq/vpn/MainActivity;->i:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/sgscq/vpn/MainActivity;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sgscq/vpn/o3;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "name"

    iget-object v5, v2, Lcom/sgscq/vpn/o3;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "avatar"

    iget-object v5, v2, Lcom/sgscq/vpn/o3;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, ""

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, v6

    :goto_1
    :try_start_1
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "userId"

    iget-object v5, v2, Lcom/sgscq/vpn/o3;->c:Ljava/lang/String;

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move-object v5, v6

    :goto_2
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "total"

    iget-wide v7, v2, Lcom/sgscq/vpn/o3;->d:D

    invoke-virtual {v3, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-object v4, v2, Lcom/sgscq/vpn/o3;->e:Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, v2, Lcom/sgscq/vpn/o3;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v4}, Lcom/sgscq/vpn/MainActivity;->c(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/sgscq/vpn/o3;->e:Ljava/lang/String;

    :cond_4
    const-string v4, "avatarImage"

    iget-object v2, v2, Lcom/sgscq/vpn/o3;->e:Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object v6, v2

    :cond_5
    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_6
    const-string v1, "sgscq_config_v2"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sponsor_cache_v2"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sponsor_cache_v2_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    nop

    :catch_0
    :cond_7
    :goto_3
    return-void
.end method

.method public final l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/MainActivity;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sgscq/vpn/MainActivity;->n:Lcom/sgscq/vpn/f3;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    const-string v1, "\u9650\u65f6\u529f\u80fd\u5df2\u7981\u7528"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    const-string v1, "\u9650\u65f6\u529f\u80fd\u5df2\u7981\u7528\uff0c\u70b9\u51fb\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    new-instance v1, Lcom/sgscq/vpn/h3;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcom/sgscq/vpn/h3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d\u9650\u65f6\u6b66\u5c06\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d\u9650\u65f6\u6b66\u5c06"

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public final o()V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, ".STOP"

    .line 4
    .line 5
    const-string v2, "com.sgscq.vpn.debug"

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/sgscq/vpn/SgscqVpnService;->j()Lcom/sgscq/vpn/u6;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, v0, Lcom/sgscq/vpn/u6;->e:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v1

    .line 28
    :try_start_0
    iget-object v2, v0, Lcom/sgscq/vpn/u6;->a:Lcom/sgscq/vpn/t6;

    .line 29
    .line 30
    iget-object v3, v2, Lcom/sgscq/vpn/t6;->b:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    iput v3, v2, Lcom/sgscq/vpn/t6;->a:I

    .line 37
    .line 38
    iget-object v2, v0, Lcom/sgscq/vpn/u6;->b:Lcom/sgscq/vpn/t6;

    .line 39
    .line 40
    iget-object v4, v2, Lcom/sgscq/vpn/t6;->b:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 43
    .line 44
    .line 45
    iput v3, v2, Lcom/sgscq/vpn/t6;->a:I

    .line 46
    .line 47
    iput v3, v0, Lcom/sgscq/vpn/u6;->c:I

    .line 48
    .line 49
    iput-boolean v3, v0, Lcom/sgscq/vpn/u6;->d:Z

    .line 50
    .line 51
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-static {}, Lcom/sgscq/vpn/z2;->f()V

    .line 53
    .line 54
    .line 55
    const-string v0, "\u65e5\u5fd7\u7f13\u51b2\u533a\u5df2\u521d\u59cb\u5316"

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/MainActivity;->e(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v0, "sgscq_config_v2"

    .line 61
    .line 62
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v1, "vpn_was_running"

    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    .line 79
    .line 80
    new-instance v0, Landroid/content/Intent;

    .line 81
    .line 82
    const-class v1, Lcom/sgscq/vpn/SgscqVpnService;

    .line 83
    .line 84
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .line 86
    .line 87
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 88
    .line 89
    const/16 v3, 0x1a

    .line 90
    .line 91
    if-lt v1, v3, :cond_0

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const-string v3, "STOP"

    .line 98
    .line 99
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_0

    .line 104
    .line 105
    invoke-static {p0, v0}, Lcom/sgscq/vpn/q1;->k(Lcom/sgscq/vpn/MainActivity;Landroid/content/Intent;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 110
    .line 111
    .line 112
    :goto_0
    invoke-virtual {p0, v2}, Lcom/sgscq/vpn/MainActivity;->a(Z)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/sgscq/vpn/MainActivity;->b()V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    throw v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/sgscq/vpn/MainActivity;->o()V

    const-string p1, "VPN \u5df2\u8fde\u63a5"

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/MainActivity;->a(Z)V

    iget-object p1, p0, Lcom/sgscq/vpn/MainActivity;->b:Landroid/widget/TextView;

    const-string p2, "\u9700\u8981 VPN \u6743\u9650"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "VPN \u6743\u9650\u88ab\u62d2\u7edd"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/MainActivity;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/p5;->e0(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/p5;->l(Landroid/app/Activity;)V

    .line 10
    .line 11
    .line 12
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/c7;->d(Landroid/content/Context;)Lcom/sgscq/vpn/c7;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v2, Lcom/sgscq/vpn/e3;

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    invoke-direct {v2, v1, v3}, Lcom/sgscq/vpn/e3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/c7;->k(Lcom/sgscq/vpn/b7;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/sgscq/vpn/r3;->k()V

    .line 26
    .line 27
    .line 28
    new-instance v0, Ljava/lang/Thread;

    .line 29
    .line 30
    new-instance v2, Lcom/sgscq/vpn/f3;

    .line 31
    .line 32
    invoke-direct {v2, v1, v3}, Lcom/sgscq/vpn/f3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    .line 33
    .line 34
    .line 35
    const-string v4, "LimitedInit"

    .line 36
    .line 37
    invoke-direct {v0, v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    .line 42
    .line 43
    const-string v0, "sgscq_config_v2"

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v4, "disclaimer_accepted"

    .line 51
    .line 52
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v4, -0x2

    .line 57
    const/4 v5, -0x1

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 62
    .line 63
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    const-string v6, "\u514d\u8d23\u58f0\u660e"

    .line 67
    .line 68
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v6, "\u672c\u5e94\u7528\u4ec5\u4f9b\u5b66\u4e60\u4e0e\u7814\u7a76\u4f7f\u7528\uff0c\u4e25\u7981\u7528\u4e8e\u5546\u4e1a\u7528\u9014\u3002\n\n\u2022 \u672c\u5e94\u7528\u4e0d\u63d0\u4f9b\u4efb\u4f55\u6e38\u620f\u5b98\u65b9\u670d\u52a1\n\u2022 \u6240\u6709\u529f\u80fd\u5747\u4e3a\u6280\u672f\u7814\u7a76\u4e0e\u5b66\u4e60\u76ee\u7684\n\u2022 \u8bf7\u5728\u4e0b\u8f7d\u540e 24 \u5c0f\u65f6\u5185\u5220\u9664\u672c\u5e94\u7528\n\u2022 \u4f7f\u7528\u672c\u5e94\u7528\u6240\u4ea7\u751f\u7684\u4e00\u5207\u540e\u679c\u7531\u7528\u6237\u81ea\u884c\u627f\u62c5\n\n\u7ee7\u7eed\u4f7f\u7528\u5373\u8868\u793a\u60a8\u5df2\u9605\u8bfb\u5e76\u540c\u610f\u4e0a\u8ff0\u58f0\u660e\u3002"

    .line 73
    .line 74
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    new-instance v6, Lcom/sgscq/vpn/k3;

    .line 83
    .line 84
    invoke-direct {v6, v1, v2}, Lcom/sgscq/vpn/k3;-><init>(Ljava/lang/Object;I)V

    .line 85
    .line 86
    .line 87
    const-string v7, "\u6211\u5df2\u9605\u8bfb\u5e76\u540c\u610f"

    .line 88
    .line 89
    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    new-instance v6, Lcom/sgscq/vpn/k3;

    .line 94
    .line 95
    invoke-direct {v6, v1, v3}, Lcom/sgscq/vpn/k3;-><init>(Ljava/lang/Object;I)V

    .line 96
    .line 97
    .line 98
    const-string v7, "\u4e0d\u540c\u610f"

    .line 99
    .line 100
    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    sget v7, Lcom/sgscq/vpn/p5;->B:I

    .line 116
    .line 117
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    sget v7, Lcom/sgscq/vpn/p5;->G:I

    .line 125
    .line 126
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    .line 128
    .line 129
    const v6, 0x1020016

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    check-cast v6, Landroid/widget/TextView;

    .line 137
    .line 138
    if-eqz v6, :cond_1

    .line 139
    .line 140
    sget v7, Lcom/sgscq/vpn/p5;->F:I

    .line 141
    .line 142
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    .line 144
    .line 145
    :cond_1
    const v6, 0x102000b

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    check-cast v6, Landroid/widget/TextView;

    .line 153
    .line 154
    if-eqz v6, :cond_2

    .line 155
    .line 156
    sget v7, Lcom/sgscq/vpn/p5;->G:I

    .line 157
    .line 158
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    .line 160
    .line 161
    :cond_2
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    .line 166
    .line 167
    sget v7, Lcom/sgscq/vpn/p5;->y:I

    .line 168
    .line 169
    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    .line 174
    .line 175
    :goto_0
    const-string v0, "sgscq_meta"

    .line 176
    .line 177
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    const-string v6, "launch_count"

    .line 182
    .line 183
    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    add-int/2addr v6, v3

    .line 188
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    const-string v7, "launch_count"

    .line 193
    .line 194
    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 199
    .line 200
    .line 201
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->z:Landroid/graphics/drawable/GradientDrawable;

    .line 202
    .line 203
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 204
    .line 205
    .line 206
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->z:Landroid/graphics/drawable/GradientDrawable;

    .line 207
    .line 208
    const/16 v6, 0xc

    .line 209
    .line 210
    invoke-static {v6, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 211
    .line 212
    .line 213
    move-result v7

    .line 214
    int-to-float v7, v7

    .line 215
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 216
    .line 217
    .line 218
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->A:Landroid/graphics/drawable/GradientDrawable;

    .line 219
    .line 220
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 221
    .line 222
    .line 223
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->A:Landroid/graphics/drawable/GradientDrawable;

    .line 224
    .line 225
    const/16 v7, 0xa

    .line 226
    .line 227
    invoke-static {v7, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 228
    .line 229
    .line 230
    move-result v8

    .line 231
    int-to-float v8, v8

    .line 232
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 233
    .line 234
    .line 235
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->A:Landroid/graphics/drawable/GradientDrawable;

    .line 236
    .line 237
    sget v8, Lcom/sgscq/vpn/p5;->y:I

    .line 238
    .line 239
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 240
    .line 241
    .line 242
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->B:Landroid/graphics/drawable/GradientDrawable;

    .line 243
    .line 244
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 245
    .line 246
    .line 247
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->B:Landroid/graphics/drawable/GradientDrawable;

    .line 248
    .line 249
    invoke-static {v7, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 250
    .line 251
    .line 252
    move-result v8

    .line 253
    int-to-float v8, v8

    .line 254
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 255
    .line 256
    .line 257
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->B:Landroid/graphics/drawable/GradientDrawable;

    .line 258
    .line 259
    sget v8, Lcom/sgscq/vpn/p5;->y:I

    .line 260
    .line 261
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 262
    .line 263
    .line 264
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->C:Landroid/graphics/drawable/GradientDrawable;

    .line 265
    .line 266
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 267
    .line 268
    .line 269
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->C:Landroid/graphics/drawable/GradientDrawable;

    .line 270
    .line 271
    invoke-static {v6, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 272
    .line 273
    .line 274
    move-result v8

    .line 275
    int-to-float v8, v8

    .line 276
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 277
    .line 278
    .line 279
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->C:Landroid/graphics/drawable/GradientDrawable;

    .line 280
    .line 281
    const/4 v8, 0x2

    .line 282
    invoke-static {v8, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 283
    .line 284
    .line 285
    move-result v9

    .line 286
    sget v10, Lcom/sgscq/vpn/p5;->B:I

    .line 287
    .line 288
    invoke-virtual {v0, v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 289
    .line 290
    .line 291
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->D:Landroid/graphics/drawable/GradientDrawable;

    .line 292
    .line 293
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 294
    .line 295
    .line 296
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->D:Landroid/graphics/drawable/GradientDrawable;

    .line 297
    .line 298
    invoke-static {v7, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 299
    .line 300
    .line 301
    move-result v9

    .line 302
    int-to-float v9, v9

    .line 303
    invoke-virtual {v0, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 304
    .line 305
    .line 306
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->D:Landroid/graphics/drawable/GradientDrawable;

    .line 307
    .line 308
    invoke-static {v8, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 309
    .line 310
    .line 311
    move-result v9

    .line 312
    sget v10, Lcom/sgscq/vpn/p5;->B:I

    .line 313
    .line 314
    invoke-virtual {v0, v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 315
    .line 316
    .line 317
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->D:Landroid/graphics/drawable/GradientDrawable;

    .line 318
    .line 319
    sget v9, Lcom/sgscq/vpn/p5;->y:I

    .line 320
    .line 321
    invoke-virtual {v0, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 322
    .line 323
    .line 324
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->E:Landroid/graphics/drawable/GradientDrawable;

    .line 325
    .line 326
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 327
    .line 328
    .line 329
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->E:Landroid/graphics/drawable/GradientDrawable;

    .line 330
    .line 331
    invoke-static {v7, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 332
    .line 333
    .line 334
    move-result v9

    .line 335
    int-to-float v9, v9

    .line 336
    invoke-virtual {v0, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 337
    .line 338
    .line 339
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->E:Landroid/graphics/drawable/GradientDrawable;

    .line 340
    .line 341
    invoke-static {v8, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 342
    .line 343
    .line 344
    move-result v9

    .line 345
    sget v10, Lcom/sgscq/vpn/p5;->B:I

    .line 346
    .line 347
    invoke-virtual {v0, v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 348
    .line 349
    .line 350
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->E:Landroid/graphics/drawable/GradientDrawable;

    .line 351
    .line 352
    sget v9, Lcom/sgscq/vpn/p5;->y:I

    .line 353
    .line 354
    invoke-virtual {v0, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 355
    .line 356
    .line 357
    new-instance v0, Landroid/widget/ScrollView;

    .line 358
    .line 359
    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 363
    .line 364
    .line 365
    const/high16 v9, 0x40000

    .line 366
    .line 367
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 368
    .line 369
    .line 370
    sget v10, Lcom/sgscq/vpn/p5;->x:I

    .line 371
    .line 372
    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 373
    .line 374
    .line 375
    new-instance v10, Landroid/widget/LinearLayout;

    .line 376
    .line 377
    invoke-direct {v10, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 381
    .line 382
    .line 383
    sget v11, Lcom/sgscq/vpn/p5;->x:I

    .line 384
    .line 385
    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 386
    .line 387
    .line 388
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/p5;->s0(Landroid/content/Context;)Z

    .line 389
    .line 390
    .line 391
    move-result v11

    .line 392
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 393
    .line 394
    .line 395
    move-result-object v12

    .line 396
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 397
    .line 398
    .line 399
    move-result-object v12

    .line 400
    iget v12, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 401
    .line 402
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 403
    .line 404
    .line 405
    move-result-object v12

    .line 406
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 407
    .line 408
    .line 409
    move-result-object v12

    .line 410
    iget v12, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 411
    .line 412
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 413
    .line 414
    .line 415
    move-result-object v12

    .line 416
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 417
    .line 418
    .line 419
    move-result-object v12

    .line 420
    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    .line 421
    .line 422
    if-eqz v11, :cond_3

    .line 423
    .line 424
    const/16 v12, 0x16

    .line 425
    .line 426
    goto :goto_1

    .line 427
    :cond_3
    const/16 v12, 0x1c

    .line 428
    .line 429
    :goto_1
    if-eqz v11, :cond_4

    .line 430
    .line 431
    const/16 v14, 0xb

    .line 432
    .line 433
    goto :goto_2

    .line 434
    :cond_4
    move v14, v6

    .line 435
    :goto_2
    if-eqz v11, :cond_5

    .line 436
    .line 437
    move v15, v7

    .line 438
    goto :goto_3

    .line 439
    :cond_5
    const/16 v15, 0xb

    .line 440
    .line 441
    :goto_3
    const/16 v13, 0x10

    .line 442
    .line 443
    if-eqz v11, :cond_6

    .line 444
    .line 445
    move v9, v13

    .line 446
    goto :goto_4

    .line 447
    :cond_6
    const/16 v16, 0x12

    .line 448
    .line 449
    move/from16 v9, v16

    .line 450
    .line 451
    :goto_4
    const/16 v7, 0x8

    .line 452
    .line 453
    if-eqz v11, :cond_7

    .line 454
    .line 455
    invoke-static {v7, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 456
    .line 457
    .line 458
    move-result v17

    .line 459
    goto :goto_5

    .line 460
    :cond_7
    invoke-static {v13, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 461
    .line 462
    .line 463
    move-result v17

    .line 464
    :goto_5
    move/from16 v8, v17

    .line 465
    .line 466
    if-eqz v11, :cond_8

    .line 467
    .line 468
    invoke-static {v7, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 469
    .line 470
    .line 471
    move-result v17

    .line 472
    goto :goto_6

    .line 473
    :cond_8
    invoke-static {v6, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 474
    .line 475
    .line 476
    move-result v17

    .line 477
    :goto_6
    move/from16 v18, v17

    .line 478
    .line 479
    const/16 v3, 0x2c

    .line 480
    .line 481
    if-eqz v11, :cond_9

    .line 482
    .line 483
    invoke-static {v3, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 484
    .line 485
    .line 486
    move-result v19

    .line 487
    move/from16 v3, v19

    .line 488
    .line 489
    goto :goto_7

    .line 490
    :cond_9
    const/16 v3, 0x34

    .line 491
    .line 492
    invoke-static {v3, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 493
    .line 494
    .line 495
    move-result v3

    .line 496
    :goto_7
    if-eqz v11, :cond_a

    .line 497
    .line 498
    const/16 v20, 0x28

    .line 499
    .line 500
    goto :goto_8

    .line 501
    :cond_a
    const/16 v20, 0x30

    .line 502
    .line 503
    :goto_8
    move/from16 v7, v20

    .line 504
    .line 505
    invoke-static {v7, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 506
    .line 507
    .line 508
    move-result v7

    .line 509
    const/4 v2, 0x6

    .line 510
    if-eqz v11, :cond_b

    .line 511
    .line 512
    invoke-static {v2, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 513
    .line 514
    .line 515
    move-result v21

    .line 516
    goto :goto_9

    .line 517
    :cond_b
    invoke-static {v6, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 518
    .line 519
    .line 520
    move-result v21

    .line 521
    :goto_9
    move/from16 v22, v21

    .line 522
    .line 523
    if-eqz v11, :cond_c

    .line 524
    .line 525
    invoke-static {v2, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 526
    .line 527
    .line 528
    move-result v2

    .line 529
    goto :goto_a

    .line 530
    :cond_c
    invoke-static {v6, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    :goto_a
    const/16 v4, 0x50

    .line 535
    .line 536
    if-eqz v11, :cond_d

    .line 537
    .line 538
    invoke-static {v4, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 539
    .line 540
    .line 541
    move-result v23

    .line 542
    move/from16 v4, v23

    .line 543
    .line 544
    goto :goto_b

    .line 545
    :cond_d
    const/16 v4, 0x64

    .line 546
    .line 547
    invoke-static {v4, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 548
    .line 549
    .line 550
    move-result v4

    .line 551
    :goto_b
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/p5;->Y(Landroid/app/Activity;)I

    .line 552
    .line 553
    .line 554
    move-result v24

    .line 555
    const/16 v5, 0x18

    .line 556
    .line 557
    if-eqz v11, :cond_e

    .line 558
    .line 559
    invoke-static {v6, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 560
    .line 561
    .line 562
    move-result v25

    .line 563
    goto :goto_c

    .line 564
    :cond_e
    invoke-static {v5, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 565
    .line 566
    .line 567
    move-result v25

    .line 568
    :goto_c
    add-int v6, v25, v24

    .line 569
    .line 570
    if-eqz v11, :cond_f

    .line 571
    .line 572
    invoke-static {v13, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 573
    .line 574
    .line 575
    move-result v5

    .line 576
    goto :goto_d

    .line 577
    :cond_f
    invoke-static {v5, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 578
    .line 579
    .line 580
    move-result v5

    .line 581
    :goto_d
    if-eqz v11, :cond_10

    .line 582
    .line 583
    const/16 v24, 0x38

    .line 584
    .line 585
    goto :goto_e

    .line 586
    :cond_10
    const/16 v24, 0x48

    .line 587
    .line 588
    :goto_e
    move/from16 v13, v24

    .line 589
    .line 590
    invoke-static {v13, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 591
    .line 592
    .line 593
    move-result v13

    .line 594
    iput v13, v1, Lcom/sgscq/vpn/MainActivity;->w:I

    .line 595
    .line 596
    if-eqz v11, :cond_11

    .line 597
    .line 598
    const/16 v13, 0x24

    .line 599
    .line 600
    goto :goto_f

    .line 601
    :cond_11
    const/16 v13, 0x2c

    .line 602
    .line 603
    :goto_f
    invoke-static {v13, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 604
    .line 605
    .line 606
    move-result v13

    .line 607
    iput v13, v1, Lcom/sgscq/vpn/MainActivity;->x:I

    .line 608
    .line 609
    if-eqz v11, :cond_12

    .line 610
    .line 611
    const/high16 v19, 0x41200000    # 10.0f

    .line 612
    .line 613
    move/from16 v13, v19

    .line 614
    .line 615
    goto :goto_10

    .line 616
    :cond_12
    const/high16 v13, 0x41300000    # 11.0f

    .line 617
    .line 618
    :goto_10
    iput v13, v1, Lcom/sgscq/vpn/MainActivity;->y:F

    .line 619
    .line 620
    new-instance v13, Landroid/widget/TextView;

    .line 621
    .line 622
    invoke-direct {v13, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 623
    .line 624
    .line 625
    move-object/from16 v24, v0

    .line 626
    .line 627
    const-string v0, "\u4e09\u4f20\u7eed\u547d"

    .line 628
    .line 629
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    .line 631
    .line 632
    int-to-float v0, v12

    .line 633
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 634
    .line 635
    .line 636
    sget v0, Lcom/sgscq/vpn/p5;->F:I

    .line 637
    .line 638
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 639
    .line 640
    .line 641
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 642
    .line 643
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 644
    .line 645
    .line 646
    const/16 v0, 0x11

    .line 647
    .line 648
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 649
    .line 650
    .line 651
    move/from16 v26, v5

    .line 652
    .line 653
    move/from16 v27, v6

    .line 654
    .line 655
    const/4 v0, -0x2

    .line 656
    const/4 v5, -0x1

    .line 657
    const/4 v12, 0x0

    .line 658
    invoke-static {v5, v0, v12, v12, v12}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 659
    .line 660
    .line 661
    move-result-object v6

    .line 662
    invoke-virtual {v10, v13, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 663
    .line 664
    .line 665
    new-instance v0, Landroid/widget/TextView;

    .line 666
    .line 667
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 668
    .line 669
    .line 670
    const-string v5, "\u4e09\u56fd\u6740\u4f20\u5947 \u00b7 \u5355\u673a\u670d\u52a1\u5668 | v1.0.1.14067 Build: 09-23 11:19"

    .line 671
    .line 672
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    .line 674
    .line 675
    int-to-float v5, v14

    .line 676
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 677
    .line 678
    .line 679
    sget v5, Lcom/sgscq/vpn/p5;->G:I

    .line 680
    .line 681
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 682
    .line 683
    .line 684
    const/16 v5, 0x11

    .line 685
    .line 686
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 687
    .line 688
    .line 689
    const/16 v5, 0x8

    .line 690
    .line 691
    invoke-static {v5, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 692
    .line 693
    .line 694
    move-result v6

    .line 695
    const/4 v5, 0x0

    .line 696
    const/4 v12, -0x2

    .line 697
    const/4 v13, -0x1

    .line 698
    invoke-static {v13, v12, v5, v5, v6}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 699
    .line 700
    .line 701
    move-result-object v6

    .line 702
    invoke-virtual {v10, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 703
    .line 704
    .line 705
    new-instance v0, Landroid/widget/TextView;

    .line 706
    .line 707
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 708
    .line 709
    .line 710
    const-string v5, "\u76ee\u524d\u8fd8\u4e0d\u5b8c\u5584\uff0c\u80af\u5b9a\u4f1a\u6709\u5404\u79cd\u95ee\u9898\u54e6\uff08\u5148\u5728\u5b58\u6863\u7ba1\u7406\u65b0\u5efa\u7a7a\u53f7\uff09"

    .line 711
    .line 712
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    .line 714
    .line 715
    int-to-float v5, v15

    .line 716
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 717
    .line 718
    .line 719
    sget v5, Lcom/sgscq/vpn/p5;->H:I

    .line 720
    .line 721
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 722
    .line 723
    .line 724
    const/16 v5, 0x11

    .line 725
    .line 726
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 727
    .line 728
    .line 729
    const/4 v5, 0x4

    .line 730
    invoke-static {v5, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 731
    .line 732
    .line 733
    move-result v6

    .line 734
    const/4 v12, 0x0

    .line 735
    const/4 v13, -0x2

    .line 736
    const/4 v14, -0x1

    .line 737
    invoke-static {v14, v13, v12, v12, v6}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 738
    .line 739
    .line 740
    move-result-object v6

    .line 741
    invoke-virtual {v10, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 742
    .line 743
    .line 744
    new-instance v0, Landroid/widget/LinearLayout;

    .line 745
    .line 746
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 747
    .line 748
    .line 749
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 750
    .line 751
    .line 752
    const/16 v6, 0x10

    .line 753
    .line 754
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 755
    .line 756
    .line 757
    invoke-static {v6, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 758
    .line 759
    .line 760
    move-result v13

    .line 761
    const/16 v14, 0xc

    .line 762
    .line 763
    invoke-static {v14, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 764
    .line 765
    .line 766
    move-result v15

    .line 767
    invoke-static {v6, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 768
    .line 769
    .line 770
    move-result v5

    .line 771
    invoke-static {v14, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 772
    .line 773
    .line 774
    move-result v6

    .line 775
    invoke-virtual {v0, v13, v15, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 776
    .line 777
    .line 778
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    .line 779
    .line 780
    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 781
    .line 782
    .line 783
    invoke-virtual {v5, v12}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 784
    .line 785
    .line 786
    invoke-static {v14, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 787
    .line 788
    .line 789
    move-result v6

    .line 790
    int-to-float v6, v6

    .line 791
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 792
    .line 793
    .line 794
    const/4 v6, 0x1

    .line 795
    invoke-static {v6, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 796
    .line 797
    .line 798
    move-result v13

    .line 799
    sget v6, Lcom/sgscq/vpn/p5;->I:I

    .line 800
    .line 801
    invoke-virtual {v5, v13, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 802
    .line 803
    .line 804
    sget v6, Lcom/sgscq/vpn/p5;->y:I

    .line 805
    .line 806
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 807
    .line 808
    .line 809
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 810
    .line 811
    .line 812
    invoke-static {v14, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 813
    .line 814
    .line 815
    move-result v5

    .line 816
    const/4 v6, -0x2

    .line 817
    const/4 v13, -0x1

    .line 818
    invoke-static {v13, v6, v12, v12, v5}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 819
    .line 820
    .line 821
    move-result-object v5

    .line 822
    invoke-virtual {v10, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 823
    .line 824
    .line 825
    new-instance v5, Landroid/widget/TextView;

    .line 826
    .line 827
    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 828
    .line 829
    .line 830
    iput-object v5, v1, Lcom/sgscq/vpn/MainActivity;->c:Landroid/widget/TextView;

    .line 831
    .line 832
    const/high16 v6, 0x41600000    # 14.0f

    .line 833
    .line 834
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 835
    .line 836
    .line 837
    iget-object v5, v1, Lcom/sgscq/vpn/MainActivity;->c:Landroid/widget/TextView;

    .line 838
    .line 839
    const/16 v13, 0x8

    .line 840
    .line 841
    invoke-static {v13, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 842
    .line 843
    .line 844
    move-result v14

    .line 845
    invoke-virtual {v5, v12, v12, v14, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 846
    .line 847
    .line 848
    iget-object v5, v1, Lcom/sgscq/vpn/MainActivity;->c:Landroid/widget/TextView;

    .line 849
    .line 850
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 851
    .line 852
    .line 853
    new-instance v5, Landroid/widget/TextView;

    .line 854
    .line 855
    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 856
    .line 857
    .line 858
    iput-object v5, v1, Lcom/sgscq/vpn/MainActivity;->b:Landroid/widget/TextView;

    .line 859
    .line 860
    const/high16 v13, 0x41500000    # 13.0f

    .line 861
    .line 862
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 863
    .line 864
    .line 865
    iget-object v5, v1, Lcom/sgscq/vpn/MainActivity;->b:Landroid/widget/TextView;

    .line 866
    .line 867
    const/4 v13, -0x2

    .line 868
    const/4 v14, -0x1

    .line 869
    invoke-static {v14, v13, v12, v12, v12}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 870
    .line 871
    .line 872
    move-result-object v15

    .line 873
    invoke-virtual {v0, v5, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 874
    .line 875
    .line 876
    new-instance v0, Landroid/widget/LinearLayout;

    .line 877
    .line 878
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 882
    .line 883
    .line 884
    invoke-static {v14, v3, v12, v12, v8}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 885
    .line 886
    .line 887
    move-result-object v3

    .line 888
    invoke-virtual {v10, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 889
    .line 890
    .line 891
    new-instance v3, Landroid/widget/Button;

    .line 892
    .line 893
    invoke-direct {v3, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 894
    .line 895
    .line 896
    iput-object v3, v1, Lcom/sgscq/vpn/MainActivity;->d:Landroid/widget/Button;

    .line 897
    .line 898
    int-to-float v5, v9

    .line 899
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 900
    .line 901
    .line 902
    iget-object v3, v1, Lcom/sgscq/vpn/MainActivity;->d:Landroid/widget/Button;

    .line 903
    .line 904
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 905
    .line 906
    .line 907
    iget-object v3, v1, Lcom/sgscq/vpn/MainActivity;->d:Landroid/widget/Button;

    .line 908
    .line 909
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 910
    .line 911
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 912
    .line 913
    .line 914
    iget-object v3, v1, Lcom/sgscq/vpn/MainActivity;->d:Landroid/widget/Button;

    .line 915
    .line 916
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 917
    .line 918
    .line 919
    iget-object v3, v1, Lcom/sgscq/vpn/MainActivity;->d:Landroid/widget/Button;

    .line 920
    .line 921
    invoke-virtual {v3, v12}, Landroid/view/View;->setMinimumHeight(I)V

    .line 922
    .line 923
    .line 924
    iget-object v3, v1, Lcom/sgscq/vpn/MainActivity;->d:Landroid/widget/Button;

    .line 925
    .line 926
    invoke-virtual {v3, v12, v12, v12, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 927
    .line 928
    .line 929
    iget-object v3, v1, Lcom/sgscq/vpn/MainActivity;->d:Landroid/widget/Button;

    .line 930
    .line 931
    iget-object v5, v1, Lcom/sgscq/vpn/MainActivity;->z:Landroid/graphics/drawable/GradientDrawable;

    .line 932
    .line 933
    iget-object v8, v1, Lcom/sgscq/vpn/MainActivity;->C:Landroid/graphics/drawable/GradientDrawable;

    .line 934
    .line 935
    invoke-static {v3, v5, v8}, Lcom/sgscq/vpn/p5;->i(Landroid/widget/Button;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)V

    .line 936
    .line 937
    .line 938
    iget-object v3, v1, Lcom/sgscq/vpn/MainActivity;->d:Landroid/widget/Button;

    .line 939
    .line 940
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 941
    .line 942
    const/high16 v8, 0x3f800000    # 1.0f

    .line 943
    .line 944
    const/4 v9, -0x1

    .line 945
    invoke-direct {v5, v12, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 946
    .line 947
    .line 948
    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 949
    .line 950
    .line 951
    new-instance v3, Landroid/view/View;

    .line 952
    .line 953
    invoke-direct {v3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 954
    .line 955
    .line 956
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 957
    .line 958
    const/16 v9, 0x8

    .line 959
    .line 960
    invoke-static {v9, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 961
    .line 962
    .line 963
    move-result v13

    .line 964
    invoke-direct {v5, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 965
    .line 966
    .line 967
    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 968
    .line 969
    .line 970
    new-instance v3, Landroid/widget/Button;

    .line 971
    .line 972
    invoke-direct {v3, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 973
    .line 974
    .line 975
    iput-object v3, v1, Lcom/sgscq/vpn/MainActivity;->e:Landroid/widget/Button;

    .line 976
    .line 977
    const/high16 v5, 0x41400000    # 12.0f

    .line 978
    .line 979
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 980
    .line 981
    .line 982
    iget-object v3, v1, Lcom/sgscq/vpn/MainActivity;->e:Landroid/widget/Button;

    .line 983
    .line 984
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 985
    .line 986
    .line 987
    iget-object v3, v1, Lcom/sgscq/vpn/MainActivity;->e:Landroid/widget/Button;

    .line 988
    .line 989
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 990
    .line 991
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 992
    .line 993
    .line 994
    iget-object v3, v1, Lcom/sgscq/vpn/MainActivity;->e:Landroid/widget/Button;

    .line 995
    .line 996
    const-string v9, "\u5206\u6790\u6570\u636e\u5bfc\u51fa"

    .line 997
    .line 998
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    .line 1000
    .line 1001
    iget-object v3, v1, Lcom/sgscq/vpn/MainActivity;->e:Landroid/widget/Button;

    .line 1002
    .line 1003
    sget v9, Lcom/sgscq/vpn/p5;->G:I

    .line 1004
    .line 1005
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1006
    .line 1007
    .line 1008
    iget-object v3, v1, Lcom/sgscq/vpn/MainActivity;->e:Landroid/widget/Button;

    .line 1009
    .line 1010
    invoke-virtual {v3, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 1011
    .line 1012
    .line 1013
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 1014
    .line 1015
    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v3, v12}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1019
    .line 1020
    .line 1021
    const/16 v9, 0xc

    .line 1022
    .line 1023
    invoke-static {v9, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1024
    .line 1025
    .line 1026
    move-result v13

    .line 1027
    int-to-float v13, v13

    .line 1028
    invoke-virtual {v3, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1029
    .line 1030
    .line 1031
    sget v13, Lcom/sgscq/vpn/p5;->y:I

    .line 1032
    .line 1033
    invoke-virtual {v3, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1034
    .line 1035
    .line 1036
    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    .line 1037
    .line 1038
    invoke-direct {v13}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v13, v12}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1042
    .line 1043
    .line 1044
    invoke-static {v9, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1045
    .line 1046
    .line 1047
    move-result v12

    .line 1048
    int-to-float v9, v12

    .line 1049
    invoke-virtual {v13, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1050
    .line 1051
    .line 1052
    const/4 v9, 0x2

    .line 1053
    invoke-static {v9, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1054
    .line 1055
    .line 1056
    move-result v12

    .line 1057
    sget v14, Lcom/sgscq/vpn/p5;->B:I

    .line 1058
    .line 1059
    invoke-virtual {v13, v12, v14}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1060
    .line 1061
    .line 1062
    sget v12, Lcom/sgscq/vpn/p5;->y:I

    .line 1063
    .line 1064
    invoke-virtual {v13, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1065
    .line 1066
    .line 1067
    iget-object v12, v1, Lcom/sgscq/vpn/MainActivity;->e:Landroid/widget/Button;

    .line 1068
    .line 1069
    invoke-static {v12, v3, v13}, Lcom/sgscq/vpn/p5;->i(Landroid/widget/Button;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)V

    .line 1070
    .line 1071
    .line 1072
    iget-object v3, v1, Lcom/sgscq/vpn/MainActivity;->e:Landroid/widget/Button;

    .line 1073
    .line 1074
    new-instance v12, Lcom/sgscq/vpn/h3;

    .line 1075
    .line 1076
    invoke-direct {v12, v1, v9}, Lcom/sgscq/vpn/h3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {v3, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1080
    .line 1081
    .line 1082
    iget-object v3, v1, Lcom/sgscq/vpn/MainActivity;->e:Landroid/widget/Button;

    .line 1083
    .line 1084
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 1085
    .line 1086
    const/4 v12, 0x0

    .line 1087
    const/4 v13, -0x1

    .line 1088
    invoke-direct {v9, v12, v13, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {v0, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1092
    .line 1093
    .line 1094
    new-instance v0, Landroid/widget/LinearLayout;

    .line 1095
    .line 1096
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1097
    .line 1098
    .line 1099
    iput-object v0, v1, Lcom/sgscq/vpn/MainActivity;->h:Landroid/widget/LinearLayout;

    .line 1100
    .line 1101
    const/4 v3, 0x1

    .line 1102
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1103
    .line 1104
    .line 1105
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->h:Landroid/widget/LinearLayout;

    .line 1106
    .line 1107
    const/4 v3, 0x4

    .line 1108
    invoke-static {v3, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1109
    .line 1110
    .line 1111
    move-result v9

    .line 1112
    invoke-static {v3, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1113
    .line 1114
    .line 1115
    move-result v13

    .line 1116
    invoke-virtual {v0, v12, v9, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 1117
    .line 1118
    .line 1119
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->h:Landroid/widget/LinearLayout;

    .line 1120
    .line 1121
    const/16 v3, 0x8

    .line 1122
    .line 1123
    invoke-static {v3, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1124
    .line 1125
    .line 1126
    move-result v9

    .line 1127
    const/4 v3, -0x2

    .line 1128
    const/4 v13, -0x1

    .line 1129
    invoke-static {v13, v3, v12, v12, v9}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v9

    .line 1133
    invoke-virtual {v10, v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/MainActivity;->b()V

    .line 1137
    .line 1138
    .line 1139
    new-instance v0, Landroid/widget/TextView;

    .line 1140
    .line 1141
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1142
    .line 1143
    .line 1144
    iput-object v0, v1, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    .line 1145
    .line 1146
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 1147
    .line 1148
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1149
    .line 1150
    .line 1151
    invoke-virtual {v0, v12}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1152
    .line 1153
    .line 1154
    const/16 v3, 0xa

    .line 1155
    .line 1156
    invoke-static {v3, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1157
    .line 1158
    .line 1159
    move-result v9

    .line 1160
    int-to-float v3, v9

    .line 1161
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1162
    .line 1163
    .line 1164
    sget v3, Lcom/sgscq/vpn/p5;->y:I

    .line 1165
    .line 1166
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1167
    .line 1168
    .line 1169
    iget-object v3, v1, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    .line 1170
    .line 1171
    sget v9, Lcom/sgscq/vpn/p5;->F:I

    .line 1172
    .line 1173
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1174
    .line 1175
    .line 1176
    iget-object v3, v1, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    .line 1177
    .line 1178
    const/high16 v9, 0x41800000    # 16.0f

    .line 1179
    .line 1180
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1181
    .line 1182
    .line 1183
    iget-object v3, v1, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    .line 1184
    .line 1185
    const/16 v9, 0x10

    .line 1186
    .line 1187
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 1188
    .line 1189
    .line 1190
    iget-object v3, v1, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    .line 1191
    .line 1192
    const/4 v9, 0x4

    .line 1193
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setMinLines(I)V

    .line 1194
    .line 1195
    .line 1196
    iget-object v3, v1, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    .line 1197
    .line 1198
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1199
    .line 1200
    .line 1201
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    .line 1202
    .line 1203
    const/16 v3, 0xc

    .line 1204
    .line 1205
    invoke-static {v3, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1206
    .line 1207
    .line 1208
    move-result v9

    .line 1209
    const/16 v12, 0x8

    .line 1210
    .line 1211
    invoke-static {v12, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1212
    .line 1213
    .line 1214
    move-result v13

    .line 1215
    invoke-static {v3, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1216
    .line 1217
    .line 1218
    move-result v14

    .line 1219
    invoke-static {v12, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1220
    .line 1221
    .line 1222
    move-result v3

    .line 1223
    invoke-virtual {v0, v9, v13, v14, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1224
    .line 1225
    .line 1226
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    .line 1227
    .line 1228
    invoke-static {v12, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1229
    .line 1230
    .line 1231
    move-result v3

    .line 1232
    const/4 v9, 0x0

    .line 1233
    const/4 v12, -0x2

    .line 1234
    const/4 v13, -0x1

    .line 1235
    invoke-static {v13, v12, v9, v9, v3}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v3

    .line 1239
    invoke-virtual {v10, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1240
    .line 1241
    .line 1242
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/MainActivity;->j()V

    .line 1243
    .line 1244
    .line 1245
    new-instance v0, Landroid/widget/LinearLayout;

    .line 1246
    .line 1247
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1248
    .line 1249
    .line 1250
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1251
    .line 1252
    .line 1253
    move/from16 v3, v18

    .line 1254
    .line 1255
    invoke-static {v13, v12, v9, v9, v3}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v3

    .line 1259
    invoke-virtual {v10, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1260
    .line 1261
    .line 1262
    const-string v3, "\u5b58\u6863\u7ba1\u7406"

    .line 1263
    .line 1264
    new-instance v9, Lcom/sgscq/vpn/h3;

    .line 1265
    .line 1266
    const/4 v12, 0x3

    .line 1267
    invoke-direct {v9, v1, v12}, Lcom/sgscq/vpn/h3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    .line 1268
    .line 1269
    .line 1270
    invoke-virtual {v1, v3, v9}, Lcom/sgscq/vpn/MainActivity;->g(Ljava/lang/String;Lcom/sgscq/vpn/h3;)Landroid/widget/Button;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v3

    .line 1274
    sget v9, Lcom/sgscq/vpn/p5;->B:I

    .line 1275
    .line 1276
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1277
    .line 1278
    .line 1279
    iget-object v9, v1, Lcom/sgscq/vpn/MainActivity;->A:Landroid/graphics/drawable/GradientDrawable;

    .line 1280
    .line 1281
    iget-object v13, v1, Lcom/sgscq/vpn/MainActivity;->D:Landroid/graphics/drawable/GradientDrawable;

    .line 1282
    .line 1283
    invoke-static {v3, v9, v13}, Lcom/sgscq/vpn/p5;->i(Landroid/widget/Button;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)V

    .line 1284
    .line 1285
    .line 1286
    const/4 v9, 0x1

    .line 1287
    const/4 v13, 0x0

    .line 1288
    invoke-static {v13, v7, v9, v13, v13}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v14

    .line 1292
    invoke-virtual {v0, v3, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1293
    .line 1294
    .line 1295
    new-instance v3, Landroid/view/View;

    .line 1296
    .line 1297
    invoke-direct {v3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1298
    .line 1299
    .line 1300
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 1301
    .line 1302
    const/16 v14, 0x8

    .line 1303
    .line 1304
    invoke-static {v14, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1305
    .line 1306
    .line 1307
    move-result v15

    .line 1308
    invoke-direct {v9, v15, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1309
    .line 1310
    .line 1311
    invoke-virtual {v0, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1312
    .line 1313
    .line 1314
    const-string v3, "\u6e38\u620f\u8bbe\u7f6e"

    .line 1315
    .line 1316
    new-instance v9, Lcom/sgscq/vpn/h3;

    .line 1317
    .line 1318
    const/4 v13, 0x4

    .line 1319
    invoke-direct {v9, v1, v13}, Lcom/sgscq/vpn/h3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    .line 1320
    .line 1321
    .line 1322
    invoke-virtual {v1, v3, v9}, Lcom/sgscq/vpn/MainActivity;->g(Ljava/lang/String;Lcom/sgscq/vpn/h3;)Landroid/widget/Button;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v3

    .line 1326
    iput-object v3, v1, Lcom/sgscq/vpn/MainActivity;->k:Landroid/widget/Button;

    .line 1327
    .line 1328
    sget v9, Lcom/sgscq/vpn/p5;->G:I

    .line 1329
    .line 1330
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1331
    .line 1332
    .line 1333
    iget-object v3, v1, Lcom/sgscq/vpn/MainActivity;->k:Landroid/widget/Button;

    .line 1334
    .line 1335
    iget-object v9, v1, Lcom/sgscq/vpn/MainActivity;->B:Landroid/graphics/drawable/GradientDrawable;

    .line 1336
    .line 1337
    iget-object v13, v1, Lcom/sgscq/vpn/MainActivity;->E:Landroid/graphics/drawable/GradientDrawable;

    .line 1338
    .line 1339
    invoke-static {v3, v9, v13}, Lcom/sgscq/vpn/p5;->i(Landroid/widget/Button;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)V

    .line 1340
    .line 1341
    .line 1342
    iget-object v3, v1, Lcom/sgscq/vpn/MainActivity;->k:Landroid/widget/Button;

    .line 1343
    .line 1344
    const/4 v9, 0x1

    .line 1345
    const/4 v13, 0x0

    .line 1346
    invoke-static {v13, v7, v9, v13, v13}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v14

    .line 1350
    invoke-virtual {v0, v3, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1351
    .line 1352
    .line 1353
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/MainActivity;->p()V

    .line 1354
    .line 1355
    .line 1356
    new-instance v0, Lcom/sgscq/vpn/c5;

    .line 1357
    .line 1358
    invoke-direct {v0, v1}, Lcom/sgscq/vpn/c5;-><init>(Landroid/app/Activity;)V

    .line 1359
    .line 1360
    .line 1361
    new-instance v3, Landroid/widget/LinearLayout;

    .line 1362
    .line 1363
    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1364
    .line 1365
    .line 1366
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1367
    .line 1368
    .line 1369
    sget v9, Lcom/sgscq/vpn/p5;->x:I

    .line 1370
    .line 1371
    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1372
    .line 1373
    .line 1374
    new-instance v9, Landroid/widget/LinearLayout;

    .line 1375
    .line 1376
    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1377
    .line 1378
    .line 1379
    const/4 v13, 0x0

    .line 1380
    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1381
    .line 1382
    .line 1383
    const-string v14, "\u68c0\u67e5\u66f4\u65b0"

    .line 1384
    .line 1385
    new-instance v15, Lcom/sgscq/vpn/h3;

    .line 1386
    .line 1387
    const/4 v12, 0x5

    .line 1388
    invoke-direct {v15, v1, v12}, Lcom/sgscq/vpn/h3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    .line 1389
    .line 1390
    .line 1391
    new-instance v12, Landroid/widget/Button;

    .line 1392
    .line 1393
    invoke-direct {v12, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1394
    .line 1395
    .line 1396
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1397
    .line 1398
    .line 1399
    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1400
    .line 1401
    .line 1402
    sget v14, Lcom/sgscq/vpn/p5;->B:I

    .line 1403
    .line 1404
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1405
    .line 1406
    .line 1407
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 1408
    .line 1409
    .line 1410
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 1411
    .line 1412
    .line 1413
    invoke-virtual {v12, v13}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1414
    .line 1415
    .line 1416
    const/16 v14, 0xc

    .line 1417
    .line 1418
    invoke-static {v14, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1419
    .line 1420
    .line 1421
    move-result v8

    .line 1422
    invoke-static {v14, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1423
    .line 1424
    .line 1425
    move-result v5

    .line 1426
    invoke-virtual {v12, v8, v13, v5, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 1427
    .line 1428
    .line 1429
    invoke-virtual {v12, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1430
    .line 1431
    .line 1432
    sget v5, Lcom/sgscq/vpn/p5;->G:I

    .line 1433
    .line 1434
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1435
    .line 1436
    .line 1437
    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1438
    .line 1439
    .line 1440
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    .line 1441
    .line 1442
    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1443
    .line 1444
    .line 1445
    invoke-virtual {v5, v13}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1446
    .line 1447
    .line 1448
    const/16 v6, 0xa

    .line 1449
    .line 1450
    invoke-static {v6, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1451
    .line 1452
    .line 1453
    move-result v8

    .line 1454
    int-to-float v8, v8

    .line 1455
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1456
    .line 1457
    .line 1458
    sget v8, Lcom/sgscq/vpn/p5;->x:I

    .line 1459
    .line 1460
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1461
    .line 1462
    .line 1463
    sget v8, Lcom/sgscq/vpn/p5;->x:I

    .line 1464
    .line 1465
    invoke-static {v6, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1466
    .line 1467
    .line 1468
    move-result v13

    .line 1469
    int-to-float v6, v13

    .line 1470
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v13

    .line 1474
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v13

    .line 1478
    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    .line 1479
    .line 1480
    invoke-static {v8, v6, v13}, Lcom/sgscq/vpn/p5;->y0(IFF)Landroid/graphics/drawable/GradientDrawable;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v6

    .line 1484
    invoke-static {v12, v5, v6}, Lcom/sgscq/vpn/p5;->i(Landroid/widget/Button;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)V

    .line 1485
    .line 1486
    .line 1487
    const/4 v5, 0x1

    .line 1488
    const/4 v6, 0x0

    .line 1489
    invoke-static {v6, v7, v5, v6, v6}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v7

    .line 1493
    invoke-virtual {v9, v12, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1494
    .line 1495
    .line 1496
    move/from16 v7, v22

    .line 1497
    .line 1498
    const/4 v8, -0x2

    .line 1499
    const/4 v12, -0x1

    .line 1500
    invoke-static {v12, v8, v6, v6, v7}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1501
    .line 1502
    .line 1503
    move-result-object v7

    .line 1504
    invoke-virtual {v3, v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1505
    .line 1506
    .line 1507
    new-instance v7, Landroid/widget/TextView;

    .line 1508
    .line 1509
    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1510
    .line 1511
    .line 1512
    const-string v9, "\u7231\u53d1\u7535\u611f\u8c22"

    .line 1513
    .line 1514
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1515
    .line 1516
    .line 1517
    const/high16 v9, 0x41400000    # 12.0f

    .line 1518
    .line 1519
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1520
    .line 1521
    .line 1522
    sget v9, Lcom/sgscq/vpn/p5;->C:I

    .line 1523
    .line 1524
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1525
    .line 1526
    .line 1527
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 1528
    .line 1529
    .line 1530
    invoke-static {v12, v8, v6, v6, v6}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v5

    .line 1534
    invoke-virtual {v3, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1535
    .line 1536
    .line 1537
    new-instance v5, Landroid/view/View;

    .line 1538
    .line 1539
    invoke-direct {v5, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1540
    .line 1541
    .line 1542
    sget v6, Lcom/sgscq/vpn/p5;->C:I

    .line 1543
    .line 1544
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1545
    .line 1546
    .line 1547
    const/16 v6, 0x20

    .line 1548
    .line 1549
    invoke-static {v6, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1550
    .line 1551
    .line 1552
    move-result v6

    .line 1553
    const/4 v7, 0x4

    .line 1554
    invoke-static {v7, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1555
    .line 1556
    .line 1557
    move-result v7

    .line 1558
    const/4 v8, 0x2

    .line 1559
    invoke-static {v8, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1560
    .line 1561
    .line 1562
    move-result v9

    .line 1563
    invoke-static {v6, v7, v9}, Lcom/sgscq/vpn/p5;->w0(III)Landroid/widget/LinearLayout$LayoutParams;

    .line 1564
    .line 1565
    .line 1566
    move-result-object v6

    .line 1567
    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1568
    .line 1569
    .line 1570
    new-instance v5, Landroid/widget/LinearLayout;

    .line 1571
    .line 1572
    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1573
    .line 1574
    .line 1575
    iput-object v5, v1, Lcom/sgscq/vpn/MainActivity;->g:Landroid/widget/LinearLayout;

    .line 1576
    .line 1577
    const/4 v6, 0x1

    .line 1578
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1579
    .line 1580
    .line 1581
    iget-object v5, v1, Lcom/sgscq/vpn/MainActivity;->g:Landroid/widget/LinearLayout;

    .line 1582
    .line 1583
    const/16 v6, 0x11

    .line 1584
    .line 1585
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1586
    .line 1587
    .line 1588
    iget-object v5, v1, Lcom/sgscq/vpn/MainActivity;->g:Landroid/widget/LinearLayout;

    .line 1589
    .line 1590
    const/4 v7, 0x0

    .line 1591
    const/4 v8, -0x2

    .line 1592
    const/4 v9, -0x1

    .line 1593
    invoke-static {v9, v8, v7, v7, v2}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1594
    .line 1595
    .line 1596
    move-result-object v2

    .line 1597
    invoke-virtual {v3, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1598
    .line 1599
    .line 1600
    new-instance v2, Landroid/widget/TextView;

    .line 1601
    .line 1602
    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1603
    .line 1604
    .line 1605
    const-string v5, "\u6682\u65e0\u8d5e\u52a9\u8bb0\u5f55\n\u6210\u4e3a\u7b2c\u4e00\u4f4d\u652f\u6301\u8005\u5427\uff01"

    .line 1606
    .line 1607
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1608
    .line 1609
    .line 1610
    const/high16 v5, 0x41400000    # 12.0f

    .line 1611
    .line 1612
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1613
    .line 1614
    .line 1615
    sget v5, Lcom/sgscq/vpn/p5;->G:I

    .line 1616
    .line 1617
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1618
    .line 1619
    .line 1620
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1621
    .line 1622
    .line 1623
    iget-object v5, v1, Lcom/sgscq/vpn/MainActivity;->g:Landroid/widget/LinearLayout;

    .line 1624
    .line 1625
    invoke-static {v9, v8, v7, v7, v7}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1626
    .line 1627
    .line 1628
    move-result-object v6

    .line 1629
    invoke-virtual {v5, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1630
    .line 1631
    .line 1632
    new-instance v2, Landroid/widget/TextView;

    .line 1633
    .line 1634
    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1635
    .line 1636
    .line 1637
    iput-object v2, v1, Lcom/sgscq/vpn/MainActivity;->f:Landroid/widget/TextView;

    .line 1638
    .line 1639
    const/high16 v5, 0x41300000    # 11.0f

    .line 1640
    .line 1641
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1642
    .line 1643
    .line 1644
    iget-object v2, v1, Lcom/sgscq/vpn/MainActivity;->f:Landroid/widget/TextView;

    .line 1645
    .line 1646
    sget v5, Lcom/sgscq/vpn/p5;->H:I

    .line 1647
    .line 1648
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1649
    .line 1650
    .line 1651
    iget-object v2, v1, Lcom/sgscq/vpn/MainActivity;->f:Landroid/widget/TextView;

    .line 1652
    .line 1653
    sget v5, Lcom/sgscq/vpn/p5;->y:I

    .line 1654
    .line 1655
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1656
    .line 1657
    .line 1658
    iget-object v2, v1, Lcom/sgscq/vpn/MainActivity;->f:Landroid/widget/TextView;

    .line 1659
    .line 1660
    const/16 v5, 0xc

    .line 1661
    .line 1662
    invoke-static {v5, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1663
    .line 1664
    .line 1665
    move-result v6

    .line 1666
    const/16 v7, 0xa

    .line 1667
    .line 1668
    invoke-static {v7, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1669
    .line 1670
    .line 1671
    move-result v8

    .line 1672
    invoke-static {v5, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1673
    .line 1674
    .line 1675
    move-result v5

    .line 1676
    invoke-static {v7, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1677
    .line 1678
    .line 1679
    move-result v7

    .line 1680
    invoke-virtual {v2, v6, v8, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1681
    .line 1682
    .line 1683
    iget-object v2, v1, Lcom/sgscq/vpn/MainActivity;->f:Landroid/widget/TextView;

    .line 1684
    .line 1685
    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 1686
    .line 1687
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1688
    .line 1689
    .line 1690
    iget-object v2, v1, Lcom/sgscq/vpn/MainActivity;->f:Landroid/widget/TextView;

    .line 1691
    .line 1692
    const/4 v5, 0x0

    .line 1693
    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1694
    .line 1695
    .line 1696
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    .line 1697
    .line 1698
    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1699
    .line 1700
    .line 1701
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1702
    .line 1703
    .line 1704
    const/16 v6, 0x8

    .line 1705
    .line 1706
    invoke-static {v6, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1707
    .line 1708
    .line 1709
    move-result v7

    .line 1710
    int-to-float v7, v7

    .line 1711
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1712
    .line 1713
    .line 1714
    sget v7, Lcom/sgscq/vpn/p5;->y:I

    .line 1715
    .line 1716
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1717
    .line 1718
    .line 1719
    iget-object v7, v1, Lcom/sgscq/vpn/MainActivity;->f:Landroid/widget/TextView;

    .line 1720
    .line 1721
    invoke-virtual {v7, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1722
    .line 1723
    .line 1724
    iget-object v2, v1, Lcom/sgscq/vpn/MainActivity;->f:Landroid/widget/TextView;

    .line 1725
    .line 1726
    invoke-static {v6, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1727
    .line 1728
    .line 1729
    move-result v7

    .line 1730
    const/4 v6, -0x1

    .line 1731
    invoke-static {v6, v4, v5, v5, v7}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1732
    .line 1733
    .line 1734
    move-result-object v4

    .line 1735
    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1736
    .line 1737
    .line 1738
    if-eqz v11, :cond_15

    .line 1739
    .line 1740
    new-instance v2, Landroid/widget/LinearLayout;

    .line 1741
    .line 1742
    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1743
    .line 1744
    .line 1745
    const/4 v4, 0x1

    .line 1746
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1747
    .line 1748
    .line 1749
    sget v4, Lcom/sgscq/vpn/p5;->x:I

    .line 1750
    .line 1751
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1752
    .line 1753
    .line 1754
    const/16 v4, 0x10

    .line 1755
    .line 1756
    invoke-static {v4, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1757
    .line 1758
    .line 1759
    move-result v5

    .line 1760
    invoke-static {v4, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1761
    .line 1762
    .line 1763
    move-result v4

    .line 1764
    move/from16 v7, v26

    .line 1765
    .line 1766
    move/from16 v6, v27

    .line 1767
    .line 1768
    invoke-virtual {v2, v5, v6, v4, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1769
    .line 1770
    .line 1771
    :goto_11
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1772
    .line 1773
    .line 1774
    move-result v4

    .line 1775
    if-lez v4, :cond_13

    .line 1776
    .line 1777
    const/4 v4, 0x0

    .line 1778
    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1779
    .line 1780
    .line 1781
    move-result-object v5

    .line 1782
    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1783
    .line 1784
    .line 1785
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1786
    .line 1787
    .line 1788
    goto :goto_11

    .line 1789
    :cond_13
    :goto_12
    const/4 v4, 0x0

    .line 1790
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1791
    .line 1792
    .line 1793
    move-result v5

    .line 1794
    if-lez v5, :cond_14

    .line 1795
    .line 1796
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1797
    .line 1798
    .line 1799
    move-result-object v5

    .line 1800
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1801
    .line 1802
    .line 1803
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1804
    .line 1805
    .line 1806
    goto :goto_12

    .line 1807
    :cond_14
    new-instance v3, Landroid/widget/ScrollView;

    .line 1808
    .line 1809
    invoke-direct {v3, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1810
    .line 1811
    .line 1812
    const/4 v4, 0x1

    .line 1813
    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 1814
    .line 1815
    .line 1816
    const/high16 v4, 0x40000

    .line 1817
    .line 1818
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 1819
    .line 1820
    .line 1821
    sget v4, Lcom/sgscq/vpn/p5;->x:I

    .line 1822
    .line 1823
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1824
    .line 1825
    .line 1826
    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1827
    .line 1828
    .line 1829
    invoke-virtual {v0}, Lcom/sgscq/vpn/c5;->getPanelWidth()I

    .line 1830
    .line 1831
    .line 1832
    move-result v2

    .line 1833
    new-instance v4, Landroid/view/View;

    .line 1834
    .line 1835
    invoke-direct {v4, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1836
    .line 1837
    .line 1838
    sget v5, Lcom/sgscq/vpn/p5;->C:I

    .line 1839
    .line 1840
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1841
    .line 1842
    .line 1843
    new-instance v5, Landroid/widget/LinearLayout;

    .line 1844
    .line 1845
    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1846
    .line 1847
    .line 1848
    const/4 v6, 0x0

    .line 1849
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1850
    .line 1851
    .line 1852
    sget v7, Lcom/sgscq/vpn/p5;->x:I

    .line 1853
    .line 1854
    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1855
    .line 1856
    .line 1857
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 1858
    .line 1859
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1860
    .line 1861
    const/4 v9, -0x1

    .line 1862
    invoke-direct {v7, v6, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1863
    .line 1864
    .line 1865
    invoke-virtual {v5, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1866
    .line 1867
    .line 1868
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1869
    .line 1870
    const/4 v6, 0x1

    .line 1871
    invoke-static {v6, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1872
    .line 1873
    .line 1874
    move-result v7

    .line 1875
    invoke-direct {v3, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1876
    .line 1877
    .line 1878
    invoke-virtual {v5, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1879
    .line 1880
    .line 1881
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1882
    .line 1883
    invoke-direct {v3, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1884
    .line 1885
    .line 1886
    invoke-virtual {v5, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1887
    .line 1888
    .line 1889
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 1890
    .line 1891
    invoke-direct {v0, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1892
    .line 1893
    .line 1894
    goto :goto_14

    .line 1895
    :cond_15
    move/from16 v7, v26

    .line 1896
    .line 1897
    move/from16 v6, v27

    .line 1898
    .line 1899
    const/16 v2, 0x10

    .line 1900
    .line 1901
    invoke-static {v2, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1902
    .line 1903
    .line 1904
    move-result v4

    .line 1905
    invoke-static {v2, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1906
    .line 1907
    .line 1908
    move-result v2

    .line 1909
    invoke-virtual {v10, v4, v6, v2, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1910
    .line 1911
    .line 1912
    :goto_13
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1913
    .line 1914
    .line 1915
    move-result v2

    .line 1916
    if-lez v2, :cond_16

    .line 1917
    .line 1918
    const/4 v2, 0x0

    .line 1919
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1920
    .line 1921
    .line 1922
    move-result-object v4

    .line 1923
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1924
    .line 1925
    .line 1926
    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1927
    .line 1928
    .line 1929
    goto :goto_13

    .line 1930
    :cond_16
    move-object/from16 v2, v24

    .line 1931
    .line 1932
    invoke-virtual {v2, v10}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1933
    .line 1934
    .line 1935
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1936
    .line 1937
    const/4 v4, -0x2

    .line 1938
    const/4 v5, -0x1

    .line 1939
    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1940
    .line 1941
    .line 1942
    const/16 v4, 0x51

    .line 1943
    .line 1944
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1945
    .line 1946
    const/16 v4, 0x78

    .line 1947
    .line 1948
    invoke-static {v4, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1949
    .line 1950
    .line 1951
    move-result v4

    .line 1952
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1953
    .line 1954
    invoke-direct {v6, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1955
    .line 1956
    .line 1957
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1958
    .line 1959
    new-instance v5, Landroid/widget/FrameLayout;

    .line 1960
    .line 1961
    invoke-direct {v5, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1962
    .line 1963
    .line 1964
    sget v7, Lcom/sgscq/vpn/p5;->x:I

    .line 1965
    .line 1966
    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1967
    .line 1968
    .line 1969
    invoke-virtual {v5, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1970
    .line 1971
    .line 1972
    new-instance v2, Landroid/view/View;

    .line 1973
    .line 1974
    invoke-direct {v2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1975
    .line 1976
    .line 1977
    sget v6, Lcom/sgscq/vpn/p5;->C:I

    .line 1978
    .line 1979
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1980
    .line 1981
    .line 1982
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1983
    .line 1984
    const/4 v7, 0x1

    .line 1985
    invoke-static {v7, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1986
    .line 1987
    .line 1988
    move-result v8

    .line 1989
    const/4 v7, -0x1

    .line 1990
    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1991
    .line 1992
    .line 1993
    const/16 v8, 0x50

    .line 1994
    .line 1995
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1996
    .line 1997
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1998
    .line 1999
    invoke-virtual {v5, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2000
    .line 2001
    .line 2002
    invoke-virtual {v5, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2003
    .line 2004
    .line 2005
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 2006
    .line 2007
    invoke-direct {v0, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2008
    .line 2009
    .line 2010
    :goto_14
    invoke-virtual {v1, v5, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2011
    .line 2012
    .line 2013
    sget-boolean v0, Lcom/sgscq/vpn/SgscqVpnService;->m:Z

    .line 2014
    .line 2015
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/MainActivity;->a(Z)V

    .line 2016
    .line 2017
    .line 2018
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/MainActivity;->b()V

    .line 2019
    .line 2020
    .line 2021
    const-string v0, "sgscq_config_v2"

    .line 2022
    .line 2023
    const-string v2, ""

    .line 2024
    .line 2025
    const/4 v3, 0x0

    .line 2026
    const/4 v4, 0x0

    .line 2027
    :try_start_0
    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 2028
    .line 2029
    .line 2030
    move-result-object v5

    .line 2031
    const-string v4, "sponsor_cache_v2"

    .line 2032
    .line 2033
    invoke-interface {v5, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2034
    .line 2035
    .line 2036
    move-result-object v4

    .line 2037
    if-eqz v4, :cond_1b

    .line 2038
    .line 2039
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 2040
    .line 2041
    .line 2042
    move-result v5

    .line 2043
    if-eqz v5, :cond_17

    .line 2044
    .line 2045
    goto :goto_18

    .line 2046
    :cond_17
    new-instance v5, Lorg/json/JSONArray;

    .line 2047
    .line 2048
    invoke-direct {v5, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2049
    .line 2050
    .line 2051
    new-instance v4, Ljava/util/ArrayList;

    .line 2052
    .line 2053
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2054
    .line 2055
    .line 2056
    const/4 v6, 0x0

    .line 2057
    :goto_15
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 2058
    .line 2059
    .line 2060
    move-result v7

    .line 2061
    if-ge v6, v7, :cond_1a

    .line 2062
    .line 2063
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 2064
    .line 2065
    .line 2066
    move-result-object v7

    .line 2067
    const-string v8, "name"

    .line 2068
    .line 2069
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2070
    .line 2071
    .line 2072
    move-result-object v10

    .line 2073
    const-string v8, "avatar"

    .line 2074
    .line 2075
    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2076
    .line 2077
    .line 2078
    move-result-object v11

    .line 2079
    const-string v8, "userId"

    .line 2080
    .line 2081
    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2082
    .line 2083
    .line 2084
    move-result-object v12

    .line 2085
    const-string v8, "total"

    .line 2086
    .line 2087
    const-wide/16 v13, 0x0

    .line 2088
    .line 2089
    invoke-virtual {v7, v8, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 2090
    .line 2091
    .line 2092
    move-result-wide v13

    .line 2093
    new-instance v8, Lcom/sgscq/vpn/o3;

    .line 2094
    .line 2095
    move-object v9, v8

    .line 2096
    invoke-direct/range {v9 .. v14}, Lcom/sgscq/vpn/o3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 2097
    .line 2098
    .line 2099
    const-string v9, "avatarImage"

    .line 2100
    .line 2101
    invoke-virtual {v7, v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2102
    .line 2103
    .line 2104
    move-result-object v7

    .line 2105
    iput-object v7, v8, Lcom/sgscq/vpn/o3;->e:Ljava/lang/String;

    .line 2106
    .line 2107
    if-eqz v7, :cond_19

    .line 2108
    .line 2109
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 2110
    .line 2111
    .line 2112
    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2113
    if-eqz v9, :cond_18

    .line 2114
    .line 2115
    goto :goto_16

    .line 2116
    :cond_18
    const/4 v9, 0x0

    .line 2117
    :try_start_1
    invoke-static {v7, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 2118
    .line 2119
    .line 2120
    move-result-object v7

    .line 2121
    array-length v10, v7

    .line 2122
    invoke-static {v7, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 2123
    .line 2124
    .line 2125
    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2126
    goto :goto_17

    .line 2127
    :catch_0
    :cond_19
    :goto_16
    move-object v7, v3

    .line 2128
    :goto_17
    :try_start_2
    iput-object v7, v8, Lcom/sgscq/vpn/o3;->f:Landroid/graphics/Bitmap;

    .line 2129
    .line 2130
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2131
    .line 2132
    .line 2133
    add-int/lit8 v6, v6, 0x1

    .line 2134
    .line 2135
    goto :goto_15

    .line 2136
    :cond_1a
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2137
    .line 2138
    .line 2139
    move-result v2

    .line 2140
    if-nez v2, :cond_1b

    .line 2141
    .line 2142
    iput-object v4, v1, Lcom/sgscq/vpn/MainActivity;->i:Ljava/util/List;

    .line 2143
    .line 2144
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/MainActivity;->i()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2145
    .line 2146
    .line 2147
    const/4 v2, 0x1

    .line 2148
    goto :goto_19

    .line 2149
    :catch_1
    :cond_1b
    :goto_18
    const/4 v2, 0x0

    .line 2150
    :goto_19
    const-wide/16 v4, 0x0

    .line 2151
    .line 2152
    if-eqz v2, :cond_1d

    .line 2153
    .line 2154
    const/4 v2, 0x0

    .line 2155
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 2156
    .line 2157
    .line 2158
    move-result-object v0

    .line 2159
    const-string v2, "sponsor_cache_v2_time"

    .line 2160
    .line 2161
    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 2162
    .line 2163
    .line 2164
    move-result-wide v6

    .line 2165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2166
    .line 2167
    .line 2168
    move-result-wide v8

    .line 2169
    sub-long/2addr v8, v6

    .line 2170
    const-wide/32 v6, 0x6ddd00

    .line 2171
    .line 2172
    .line 2173
    cmp-long v0, v8, v6

    .line 2174
    .line 2175
    if-gez v0, :cond_1c

    .line 2176
    .line 2177
    const/4 v0, 0x1

    .line 2178
    goto :goto_1a

    .line 2179
    :cond_1c
    const/4 v0, 0x0

    .line 2180
    :goto_1a
    if-eqz v0, :cond_1d

    .line 2181
    .line 2182
    goto :goto_1b

    .line 2183
    :cond_1d
    new-instance v0, Ljava/lang/Thread;

    .line 2184
    .line 2185
    new-instance v2, Lcom/sgscq/vpn/f3;

    .line 2186
    .line 2187
    const/16 v6, 0xb

    .line 2188
    .line 2189
    invoke-direct {v2, v1, v6}, Lcom/sgscq/vpn/f3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    .line 2190
    .line 2191
    .line 2192
    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2193
    .line 2194
    .line 2195
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2196
    .line 2197
    .line 2198
    :goto_1b
    new-instance v0, Lcom/sgscq/vpn/b0;

    .line 2199
    .line 2200
    invoke-direct {v0, v1}, Lcom/sgscq/vpn/b0;-><init>(Landroid/content/Context;)V

    .line 2201
    .line 2202
    .line 2203
    invoke-virtual {v0}, Lcom/sgscq/vpn/b0;->b()Lcom/sgscq/vpn/z;

    .line 2204
    .line 2205
    .line 2206
    move-result-object v2

    .line 2207
    iget-boolean v6, v2, Lcom/sgscq/vpn/z;->b:Z

    .line 2208
    .line 2209
    if-eqz v6, :cond_20

    .line 2210
    .line 2211
    iget-object v6, v2, Lcom/sgscq/vpn/z;->a:Ljava/lang/String;

    .line 2212
    .line 2213
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 2214
    .line 2215
    .line 2216
    move-result v6

    .line 2217
    if-eqz v6, :cond_1e

    .line 2218
    .line 2219
    goto :goto_1c

    .line 2220
    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2221
    .line 2222
    .line 2223
    move-result-wide v6

    .line 2224
    iget-wide v8, v2, Lcom/sgscq/vpn/z;->d:J

    .line 2225
    .line 2226
    cmp-long v2, v8, v4

    .line 2227
    .line 2228
    if-lez v2, :cond_1f

    .line 2229
    .line 2230
    sub-long/2addr v6, v8

    .line 2231
    const-wide/32 v4, 0x240c8400

    .line 2232
    .line 2233
    .line 2234
    cmp-long v2, v6, v4

    .line 2235
    .line 2236
    if-gez v2, :cond_1f

    .line 2237
    .line 2238
    goto :goto_1c

    .line 2239
    :cond_1f
    new-instance v2, Lcom/sgscq/vpn/w;

    .line 2240
    .line 2241
    const/4 v4, 0x0

    .line 2242
    invoke-direct {v2, v0, v4}, Lcom/sgscq/vpn/w;-><init>(Lcom/sgscq/vpn/b0;I)V

    .line 2243
    .line 2244
    .line 2245
    invoke-static {v1, v3, v2}, Lcom/sgscq/vpn/b0;->f(Landroid/app/Activity;Lcom/sgscq/vpn/p6;Lcom/sgscq/vpn/w;)V

    .line 2246
    .line 2247
    .line 2248
    :cond_20
    :goto_1c
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->d:Landroid/widget/Button;

    .line 2249
    .line 2250
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2251
    .line 2252
    .line 2253
    new-instance v0, Lcom/sgscq/vpn/a7;

    .line 2254
    .line 2255
    invoke-direct {v0, v1}, Lcom/sgscq/vpn/a7;-><init>(Landroid/content/Context;)V

    .line 2256
    .line 2257
    .line 2258
    iput-object v0, v1, Lcom/sgscq/vpn/MainActivity;->o:Lcom/sgscq/vpn/a7;

    .line 2259
    .line 2260
    new-instance v2, Lcom/sgscq/vpn/f3;

    .line 2261
    .line 2262
    const/4 v3, 0x2

    .line 2263
    invoke-direct {v2, v1, v3}, Lcom/sgscq/vpn/f3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    .line 2264
    .line 2265
    .line 2266
    new-instance v3, Ljava/lang/Thread;

    .line 2267
    .line 2268
    new-instance v4, Lcom/sgscq/vpn/d7;

    .line 2269
    .line 2270
    const/4 v5, 0x0

    .line 2271
    invoke-direct {v4, v0, v2, v5}, Lcom/sgscq/vpn/d7;-><init>(Lcom/sgscq/vpn/a7;Ljava/lang/Runnable;I)V

    .line 2272
    .line 2273
    .line 2274
    const-string v0, "cloud-version-policy"

    .line 2275
    .line 2276
    invoke-direct {v3, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2277
    .line 2278
    .line 2279
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 2280
    .line 2281
    .line 2282
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->o:Lcom/sgscq/vpn/a7;

    .line 2283
    .line 2284
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2285
    .line 2286
    .line 2287
    new-instance v2, Ljava/lang/Thread;

    .line 2288
    .line 2289
    new-instance v3, Lcom/sgscq/vpn/j3;

    .line 2290
    .line 2291
    const/4 v4, 0x1

    .line 2292
    invoke-direct {v3, v0, v4, v4}, Lcom/sgscq/vpn/j3;-><init>(Ljava/lang/Object;ZI)V

    .line 2293
    .line 2294
    .line 2295
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2296
    .line 2297
    .line 2298
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 2299
    .line 2300
    .line 2301
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->t:Lcom/sgscq/vpn/g3;

    .line 2302
    .line 2303
    sget-object v2, Lcom/sgscq/vpn/x6;->a:Ljava/lang/Object;

    .line 2304
    .line 2305
    if-nez v0, :cond_21

    .line 2306
    .line 2307
    const/4 v6, 0x1

    .line 2308
    goto :goto_1e

    .line 2309
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2310
    .line 2311
    .line 2312
    move-result-object v2

    .line 2313
    sget-object v3, Lcom/sgscq/vpn/x6;->a:Ljava/lang/Object;

    .line 2314
    .line 2315
    monitor-enter v3

    .line 2316
    :try_start_3
    sget v4, Lcom/sgscq/vpn/x6;->e:I

    .line 2317
    .line 2318
    const/4 v6, 0x3

    .line 2319
    if-ne v4, v6, :cond_22

    .line 2320
    .line 2321
    move v4, v5

    .line 2322
    const/4 v5, 0x1

    .line 2323
    const/4 v6, 0x1

    .line 2324
    goto :goto_1d

    .line 2325
    :cond_22
    sget-object v4, Lcom/sgscq/vpn/x6;->d:Ljava/util/ArrayList;

    .line 2326
    .line 2327
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 2328
    .line 2329
    .line 2330
    move-result v6

    .line 2331
    if-nez v6, :cond_23

    .line 2332
    .line 2333
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2334
    .line 2335
    .line 2336
    :cond_23
    sget v4, Lcom/sgscq/vpn/x6;->e:I

    .line 2337
    .line 2338
    const/4 v6, 0x1

    .line 2339
    if-ne v4, v6, :cond_24

    .line 2340
    .line 2341
    const/4 v4, 0x2

    .line 2342
    sput v4, Lcom/sgscq/vpn/x6;->e:I

    .line 2343
    .line 2344
    move v4, v6

    .line 2345
    goto :goto_1d

    .line 2346
    :cond_24
    move v4, v5

    .line 2347
    :goto_1d
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2348
    if-eqz v5, :cond_25

    .line 2349
    .line 2350
    sget-object v2, Lcom/sgscq/vpn/x6;->b:Landroid/os/Handler;

    .line 2351
    .line 2352
    new-instance v3, Lcom/sgscq/vpn/b;

    .line 2353
    .line 2354
    const/4 v4, 0x7

    .line 2355
    invoke-direct {v3, v0, v4}, Lcom/sgscq/vpn/b;-><init>(Ljava/lang/Object;I)V

    .line 2356
    .line 2357
    .line 2358
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2359
    .line 2360
    .line 2361
    goto :goto_1e

    .line 2362
    :cond_25
    if-eqz v4, :cond_26

    .line 2363
    .line 2364
    sget-object v0, Lcom/sgscq/vpn/x6;->c:Ljava/util/concurrent/ExecutorService;

    .line 2365
    .line 2366
    new-instance v3, Lcom/sgscq/vpn/b;

    .line 2367
    .line 2368
    const/16 v4, 0x8

    .line 2369
    .line 2370
    invoke-direct {v3, v2, v4}, Lcom/sgscq/vpn/b;-><init>(Ljava/lang/Object;I)V

    .line 2371
    .line 2372
    .line 2373
    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2374
    .line 2375
    .line 2376
    :cond_26
    :goto_1e
    iget-object v0, v1, Lcom/sgscq/vpn/MainActivity;->a:Lcom/sgscq/vpn/e3;

    .line 2377
    .line 2378
    sput-object v0, Lo/j;->k:Lcom/sgscq/vpn/e3;

    .line 2379
    .line 2380
    if-eqz v0, :cond_28

    .line 2381
    .line 2382
    sget-object v2, Lo/j;->j:Lo/j;

    .line 2383
    .line 2384
    if-nez v2, :cond_27

    .line 2385
    .line 2386
    move v3, v6

    .line 2387
    goto :goto_1f

    .line 2388
    :cond_27
    iget v3, v2, Lo/j;->g:I

    .line 2389
    .line 2390
    :goto_1f
    invoke-virtual {v0, v3}, Lcom/sgscq/vpn/e3;->c(I)V

    .line 2391
    .line 2392
    .line 2393
    :cond_28
    new-instance v0, Lcom/sgscq/vpn/e3;

    .line 2394
    .line 2395
    const/4 v2, 0x2

    .line 2396
    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/e3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    .line 2397
    .line 2398
    .line 2399
    sput-object v0, Lcom/sgscq/vpn/SgscqVpnService;->n:Lcom/sgscq/vpn/e3;

    .line 2400
    .line 2401
    return-void

    .line 2402
    :catchall_0
    move-exception v0

    .line 2403
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2404
    throw v0
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/MainActivity;->a:Lcom/sgscq/vpn/e3;

    .line 2
    .line 3
    sget-object v1, Lo/j;->k:Lcom/sgscq/vpn/e3;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v1, v0, :cond_0

    .line 7
    .line 8
    sput-object v2, Lo/j;->k:Lcom/sgscq/vpn/e3;

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/sgscq/vpn/MainActivity;->m:Landroid/os/Handler;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/sgscq/vpn/MainActivity;->n:Lcom/sgscq/vpn/f3;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/sgscq/vpn/MainActivity;->t:Lcom/sgscq/vpn/g3;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    sget-object v0, Lcom/sgscq/vpn/x6;->a:Ljava/lang/Object;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    sget-object v1, Lcom/sgscq/vpn/x6;->a:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v3, Lcom/sgscq/vpn/x6;->d:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :goto_0
    sput-object v2, Lcom/sgscq/vpn/SgscqVpnService;->n:Lcom/sgscq/vpn/e3;

    .line 34
    .line 35
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw v0
.end method

.method public final onPause()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/sgscq/vpn/n0;->d:Z

    .line 3
    .line 4
    invoke-static {p0}, Lcom/sgscq/vpn/n0;->d(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x44d

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    if-eqz p3, :cond_1

    array-length p2, p3

    if-lez p2, :cond_1

    aget p2, p3, p1

    if-nez p2, :cond_1

    const/4 p1, 0x1

    :cond_1
    if-eqz p1, :cond_2

    const-string p2, "\u901a\u77e5\u6743\u9650\u5df2\u5f00\u542f"

    goto :goto_0

    :cond_2
    const-string p2, "\u901a\u77e5\u6743\u9650\u88ab\u62d2\u7edd\uff0c\u53ef\u5728\u8bbe\u7f6e\u9875\u624b\u52a8\u6253\u5f00"

    :goto_0
    invoke-virtual {p0, p2}, Lcom/sgscq/vpn/MainActivity;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sgscq/vpn/MainActivity;->f()V

    :cond_3
    return-void
.end method

.method public final onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    sput-boolean v0, Lcom/sgscq/vpn/n0;->d:Z

    .line 6
    .line 7
    invoke-static {p0}, Lcom/sgscq/vpn/n0;->d(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcom/sgscq/vpn/n0;->g:Landroid/os/Handler;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroid/os/Handler;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/sgscq/vpn/n0;->g:Landroid/os/Handler;

    .line 24
    .line 25
    :cond_0
    sget-object v2, Lcom/sgscq/vpn/n0;->h:Lcom/sgscq/vpn/i0;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    const-wide/32 v3, 0xea60

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    .line 35
    .line 36
    iget-boolean v1, p0, Lcom/sgscq/vpn/MainActivity;->q:Z

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iput-boolean v0, p0, Lcom/sgscq/vpn/MainActivity;->q:Z

    .line 42
    .line 43
    invoke-static {p0}, Lcom/sgscq/vpn/n0;->p(Landroid/content/Context;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    const-string v1, "\u68c0\u6d4b\u5230\u4e0a\u6b21\u8fd0\u884c\u5f02\u5e38\u9000\u51fa\uff0c\u70b9\u300c\u5bfc\u51fa\u300d\u53ef\u4e00\u5e76\u5bfc\u51fa\u5d29\u6e83\u65e5\u5fd7\uff08crash_log.txt\uff09"

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lcom/sgscq/vpn/MainActivity;->e(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/sgscq/vpn/MainActivity;->r:Z

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    iput-boolean v0, p0, Lcom/sgscq/vpn/MainActivity;->r:Z

    .line 60
    .line 61
    invoke-static {p0}, Lcom/sgscq/vpn/p5;->q0(Landroid/content/Context;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const/4 v2, 0x0

    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v3, "sgscq_config_v2"

    .line 74
    .line 75
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v2, "notify_permission_prompted_for"

    .line 80
    .line 81
    const-string v3, ""

    .line 82
    .line 83
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const-string v2, "1.0.1.14067"

    .line 88
    .line 89
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    xor-int/lit8 v2, v1, 0x1

    .line 94
    .line 95
    :goto_1
    if-eqz v2, :cond_6

    .line 96
    .line 97
    const-string v0, "\u901a\u77e5\u6743\u9650\u672a\u5f00\u542f\uff0c\u5145\u503c\u5230\u8d26\u63d0\u9192\u548c VPN \u72b6\u6001\u901a\u77e5\u90fd\u6536\u4e0d\u5230"

    .line 98
    .line 99
    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/MainActivity;->e(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_5

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 110
    .line 111
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 112
    .line 113
    .line 114
    const-string v1, "\u5f00\u542f\u901a\u77e5\u6743\u9650"

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const-string v1, "\u672c\u5e94\u7528\u7684\u901a\u77e5\u88ab\u7cfb\u7edf\u5173\u6389\u4e86\uff0c\u4f1a\u5e26\u6765\u4e24\u4e2a\u95ee\u9898\uff1a\n\n1. \u5145\u503c\u5230\u8d26\u3001\u8ba2\u5355\u72b6\u6001\u8fd9\u7c7b\u63d0\u9192\u6536\u4e0d\u5230\uff1b\n2. VPN \u524d\u53f0\u670d\u52a1\u7684\u72b6\u6001\u901a\u77e5\u4e0d\u663e\u793a\uff0c\u90e8\u5206\u673a\u578b\u4f1a\u628a\u6ca1\u6709\u901a\u77e5\u7684\u524d\u53f0\u670d\u52a1\u5f53\u6210\u5f02\u5e38\u6e05\u7406\uff0c\u6e38\u620f\u8fc7\u7a0b\u4e2d VPN \u4f1a\u65ad\u3002\n\n\u70b9\u300c\u53bb\u5141\u8bb8\u300d\u5728\u7cfb\u7edf\u5f39\u6846\u91cc\u9009\u62e9\u5141\u8bb8\u5373\u53ef\u3002\u5982\u679c\u4e4b\u524d\u9009\u8fc7\u300c\u4e0d\u5141\u8bb8\u300d\uff0c\u7cfb\u7edf\u4e0d\u4f1a\u518d\u5f39\uff0c\u8bf7\u70b9\u300c\u6253\u5f00\u901a\u77e5\u8bbe\u7f6e\u300d\u5728\u91cc\u9762\u624b\u52a8\u6253\u5f00\u3002"

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    new-instance v1, Lcom/sgscq/vpn/p3;

    .line 127
    .line 128
    invoke-direct {v1, p0}, Lcom/sgscq/vpn/p3;-><init>(Landroid/app/Activity;)V

    .line 129
    .line 130
    .line 131
    const-string v2, "\u53bb\u5141\u8bb8"

    .line 132
    .line 133
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    new-instance v1, Lcom/sgscq/vpn/z1;

    .line 138
    .line 139
    const/4 v2, 0x2

    .line 140
    invoke-direct {v1, p0, v2}, Lcom/sgscq/vpn/z1;-><init>(Landroid/app/Activity;I)V

    .line 141
    .line 142
    .line 143
    const-string v2, "\u6253\u5f00\u901a\u77e5\u8bbe\u7f6e"

    .line 144
    .line 145
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    new-instance v1, Lcom/sgscq/vpn/z1;

    .line 150
    .line 151
    const/4 v2, 0x3

    .line 152
    invoke-direct {v1, p0, v2}, Lcom/sgscq/vpn/z1;-><init>(Landroid/app/Activity;I)V

    .line 153
    .line 154
    .line 155
    const-string v2, "\u7a0d\u540e"

    .line 156
    .line 157
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_6
    invoke-virtual {p0}, Lcom/sgscq/vpn/MainActivity;->f()V

    .line 166
    .line 167
    .line 168
    :goto_2
    invoke-virtual {p0}, Lcom/sgscq/vpn/MainActivity;->j()V

    .line 169
    .line 170
    .line 171
    sget-boolean v0, Lcom/sgscq/vpn/SgscqVpnService;->m:Z

    .line 172
    .line 173
    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/MainActivity;->a(Z)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/sgscq/vpn/MainActivity;->b()V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method public final p()V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/c7;->d(Landroid/content/Context;)Lcom/sgscq/vpn/c7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sgscq/vpn/c7;->e()Z

    move-result v1

    iget-object v2, p0, Lcom/sgscq/vpn/MainActivity;->k:Landroid/widget/Button;

    if-eqz v2, :cond_1

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/sgscq/vpn/MainActivity;->k:Landroid/widget/Button;

    if-eqz v1, :cond_0

    const v3, 0x3ee66666    # 0.45f

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/sgscq/vpn/c7;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/MainActivity;->e(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sgscq/vpn/MainActivity;->j()V

    :cond_3
    return-void
.end method
