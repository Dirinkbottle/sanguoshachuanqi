.class public final synthetic Lcom/sgscq/vpn/q5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/sgscq/vpn/q5;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/q5;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/sgscq/vpn/q5;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 10

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/q5;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sgscq/vpn/q5;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/sgscq/vpn/q5;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto/16 :goto_6

    .line 11
    .line 12
    :pswitch_0
    check-cast v2, Lcom/sgscq/vpn/p7;

    .line 13
    .line 14
    check-cast v1, Ljava/util/Map;

    .line 15
    .line 16
    check-cast p1, Ljava/lang/String;

    .line 17
    .line 18
    check-cast p2, Ljava/lang/String;

    .line 19
    .line 20
    sget-object v0, Lcom/sgscq/vpn/p7;->t:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const v0, 0x7fffffff

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-static {v3, v0}, Ljava/lang/Integer;->compare(II)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_0
    invoke-static {p1}, Lcom/sgscq/vpn/p7;->k(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    xor-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    invoke-static {p2}, Lcom/sgscq/vpn/p7;->k(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    xor-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_1
    iget-object v0, v2, Lcom/sgscq/vpn/p7;->l:Ljava/util/LinkedHashMap;

    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lcom/sgscq/vpn/v5;

    .line 85
    .line 86
    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lcom/sgscq/vpn/v5;

    .line 91
    .line 92
    const/4 v2, 0x0

    .line 93
    if-nez v1, :cond_2

    .line 94
    .line 95
    move v1, v2

    .line 96
    goto :goto_0

    .line 97
    :cond_2
    iget v1, v1, Lcom/sgscq/vpn/v5;->d:I

    .line 98
    .line 99
    :goto_0
    if-nez v0, :cond_3

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    iget v2, v0, Lcom/sgscq/vpn/v5;->d:I

    .line 103
    .line 104
    :goto_1
    invoke-static {v2, v1}, Ljava/lang/Integer;->compare(II)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    :goto_2
    return v0

    .line 116
    :pswitch_1
    check-cast v2, Ljava/util/Set;

    .line 117
    .line 118
    check-cast v1, Ljava/util/Set;

    .line 119
    .line 120
    check-cast p1, Lcom/sgscq/vpn/k5;

    .line 121
    .line 122
    check-cast p2, Lcom/sgscq/vpn/k5;

    .line 123
    .line 124
    iget-object v0, p2, Lcom/sgscq/vpn/k5;->a:Ljava/lang/String;

    .line 125
    .line 126
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    iget-object v3, p1, Lcom/sgscq/vpn/k5;->a:Ljava/lang/String;

    .line 131
    .line 132
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    invoke-static {v0, v2}, Ljava/lang/Boolean;->compare(ZZ)I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_5

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_5
    invoke-static {p2, v1}, Lcom/sgscq/vpn/t5;->l(Lcom/sgscq/vpn/k5;Ljava/util/Set;)Ljava/util/ArrayList;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    const-wide/16 v2, 0x0

    .line 152
    .line 153
    iget-wide v4, p2, Lcom/sgscq/vpn/k5;->c:D

    .line 154
    .line 155
    if-nez v0, :cond_6

    .line 156
    .line 157
    move-wide v6, v2

    .line 158
    goto :goto_3

    .line 159
    :cond_6
    int-to-double v6, v0

    .line 160
    div-double v6, v4, v6

    .line 161
    .line 162
    :goto_3
    invoke-static {p1, v1}, Lcom/sgscq/vpn/t5;->l(Lcom/sgscq/vpn/k5;Ljava/util/Set;)Ljava/util/ArrayList;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    iget-wide v8, p1, Lcom/sgscq/vpn/k5;->c:D

    .line 171
    .line 172
    if-nez v0, :cond_7

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_7
    int-to-double v0, v0

    .line 176
    div-double v2, v8, v0

    .line 177
    .line 178
    :goto_4
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Double;->compare(DD)I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_8

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_8
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Double;->compare(DD)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_9

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_9
    iget-object p1, p1, Lcom/sgscq/vpn/k5;->a:Ljava/lang/String;

    .line 193
    .line 194
    iget-object p2, p2, Lcom/sgscq/vpn/k5;->a:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    :goto_5
    return v0

    .line 201
    :goto_6
    check-cast v2, Lcom/sgscq/vpn/battle/f;

    .line 202
    .line 203
    check-cast v1, Ljava/util/Map;

    .line 204
    .line 205
    check-cast p1, Lcom/sgscq/vpn/battle/BattleUnit;

    .line 206
    .line 207
    check-cast p2, Lcom/sgscq/vpn/battle/BattleUnit;

    .line 208
    .line 209
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Lcom/sgscq/vpn/battle/BattleUnit;->getSide()I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    check-cast p1, Ljava/lang/Integer;

    .line 221
    .line 222
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    invoke-virtual {v2, v0, p1}, Lcom/sgscq/vpn/battle/f;->b(II)I

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    invoke-virtual {p2}, Lcom/sgscq/vpn/battle/BattleUnit;->getSide()I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    check-cast p2, Ljava/lang/Integer;

    .line 239
    .line 240
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 241
    .line 242
    .line 243
    move-result p2

    .line 244
    invoke-virtual {v2, v0, p2}, Lcom/sgscq/vpn/battle/f;->b(II)I

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    return p1

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
