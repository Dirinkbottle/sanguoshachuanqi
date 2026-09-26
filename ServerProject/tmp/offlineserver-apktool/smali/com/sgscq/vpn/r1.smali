.class public final Lcom/sgscq/vpn/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sgscq/vpn/r1;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/sgscq/vpn/r1;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/sgscq/vpn/r1;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 2
    .line 3
    check-cast p2, Ljava/util/Map;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/sgscq/vpn/w1;->u1(Ljava/util/Map;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x3

    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    const-string v5, "equipment_id"

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    move v0, v4

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    move v0, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v0, v4

    .line 30
    :goto_0
    if-eqz v0, :cond_2

    .line 31
    .line 32
    move v0, v3

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    invoke-static {p1}, Lcom/sgscq/vpn/w1;->E1(Ljava/util/Map;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    move v0, v1

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    move v0, v2

    .line 43
    :goto_1
    invoke-static {p2}, Lcom/sgscq/vpn/w1;->u1(Ljava/util/Map;)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_4

    .line 48
    .line 49
    move v1, v4

    .line 50
    goto :goto_3

    .line 51
    :cond_4
    if-eqz p2, :cond_5

    .line 52
    .line 53
    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_5

    .line 58
    .line 59
    move v6, v3

    .line 60
    goto :goto_2

    .line 61
    :cond_5
    move v6, v4

    .line 62
    :goto_2
    if-eqz v6, :cond_6

    .line 63
    .line 64
    move v1, v3

    .line 65
    goto :goto_3

    .line 66
    :cond_6
    invoke-static {p2}, Lcom/sgscq/vpn/w1;->E1(Ljava/util/Map;)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_7

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_7
    move v1, v2

    .line 74
    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_8

    .line 79
    .line 80
    goto/16 :goto_9

    .line 81
    .line 82
    :cond_8
    invoke-static {p1}, Lcom/sgscq/vpn/w1;->u1(Ljava/util/Map;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_e

    .line 87
    .line 88
    const-string v0, "pk_id"

    .line 89
    .line 90
    const-string v1, ""

    .line 91
    .line 92
    const-string v2, "general_id"

    .line 93
    .line 94
    invoke-static {p1, v0, v1, v2}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-static {p2, v0, v1, v2}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/sgscq/vpn/r1;->a:Ljava/util/Map;

    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    if-eqz v1, :cond_9

    .line 106
    .line 107
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    check-cast v4, Ljava/util/Map;

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_9
    move-object v4, v2

    .line 115
    :goto_4
    if-eqz v1, :cond_a

    .line 116
    .line 117
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    move-object v2, v1

    .line 122
    check-cast v2, Ljava/util/Map;

    .line 123
    .line 124
    :cond_a
    invoke-static {p1, v4}, Lcom/sgscq/vpn/w1;->q(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-static {p2, v2}, Lcom/sgscq/vpn/w1;->q(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-static {v1, v4}, Lcom/sgscq/vpn/w1;->d0(Ljava/lang/String;Ljava/util/Map;)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-static {v5, v2}, Lcom/sgscq/vpn/w1;->d0(Ljava/lang/String;Ljava/util/Map;)I

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    invoke-static {v1, v5}, Ljava/lang/Integer;->compare(II)I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_b

    .line 145
    .line 146
    :goto_5
    move v0, v1

    .line 147
    goto :goto_9

    .line 148
    :cond_b
    invoke-static {v3}, Lcom/sgscq/vpn/w1;->C(Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->C(Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    invoke-static {v1, v5}, Ljava/lang/Integer;->compare(II)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_c

    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_c
    invoke-static {p2, v2}, Lcom/sgscq/vpn/w1;->o(Ljava/util/Map;Ljava/util/Map;)D

    .line 164
    .line 165
    .line 166
    move-result-wide v1

    .line 167
    invoke-static {p1, v4}, Lcom/sgscq/vpn/w1;->o(Ljava/util/Map;Ljava/util/Map;)D

    .line 168
    .line 169
    .line 170
    move-result-wide p1

    .line 171
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Double;->compare(DD)I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-eqz p1, :cond_d

    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_d
    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    :goto_6
    move v0, p1

    .line 183
    goto :goto_9

    .line 184
    :cond_e
    if-eqz p1, :cond_f

    .line 185
    .line 186
    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_f

    .line 191
    .line 192
    goto :goto_7

    .line 193
    :cond_f
    move v3, v4

    .line 194
    :goto_7
    if-eqz v3, :cond_10

    .line 195
    .line 196
    iget-object v0, p0, Lcom/sgscq/vpn/r1;->b:Ljava/util/Map;

    .line 197
    .line 198
    goto :goto_8

    .line 199
    :cond_10
    invoke-static {p1}, Lcom/sgscq/vpn/w1;->E1(Ljava/util/Map;)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_11

    .line 204
    .line 205
    iget-object v0, p0, Lcom/sgscq/vpn/r1;->c:Ljava/util/Map;

    .line 206
    .line 207
    const-string v5, "skill_id"

    .line 208
    .line 209
    :goto_8
    invoke-static {v5, p1, p2, v0}, Lcom/sgscq/vpn/w1;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    goto :goto_9

    .line 214
    :cond_11
    invoke-static {p1}, Lcom/sgscq/vpn/w1;->b(Ljava/util/Map;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-static {p2}, Lcom/sgscq/vpn/w1;->b(Ljava/util/Map;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    :goto_9
    return v0
.end method
