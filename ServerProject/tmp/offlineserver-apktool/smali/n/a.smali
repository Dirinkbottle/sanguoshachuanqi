.class public final synthetic Ln/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ln/a;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Ln/a;->a:I

    .line 2
    .line 3
    const-string v1, "pk_id"

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_0

    .line 9
    .line 10
    :pswitch_0
    check-cast p1, Ljava/util/Map;

    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    .line 24
    .line 25
    sget-object p1, Lcom/sgscq/vpn/handler/d0;->c:Ljava/util/Map;

    .line 26
    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_2
    check-cast p1, Ljava/lang/String;

    .line 34
    .line 35
    sget-object p1, Lcom/sgscq/vpn/handler/d0;->c:Ljava/util/Map;

    .line 36
    .line 37
    new-instance p1, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :pswitch_3
    check-cast p1, Ljava/lang/String;

    .line 44
    .line 45
    sget-object v0, Lcom/sgscq/vpn/p7;->t:Ljava/util/HashMap;

    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_4
    check-cast p1, Lcom/sgscq/vpn/v5;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_5
    check-cast p1, Lcom/sgscq/vpn/v5;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 56
    .line 57
    return-object p1

    .line 58
    :pswitch_6
    check-cast p1, Ljava/lang/String;

    .line 59
    .line 60
    sget-object v0, Lcom/sgscq/vpn/p7;->t:Ljava/util/HashMap;

    .line 61
    .line 62
    return-object p1

    .line 63
    :pswitch_7
    check-cast p1, Ljava/lang/String;

    .line 64
    .line 65
    sget-object v0, Lcom/sgscq/vpn/p7;->t:Ljava/util/HashMap;

    .line 66
    .line 67
    return-object p1

    .line 68
    :pswitch_8
    check-cast p1, Ljava/lang/String;

    .line 69
    .line 70
    sget-object v0, Lcom/sgscq/vpn/p7;->t:Ljava/util/HashMap;

    .line 71
    .line 72
    return-object p1

    .line 73
    :pswitch_9
    check-cast p1, Ljava/lang/String;

    .line 74
    .line 75
    new-instance p1, Ljava/lang/Object;

    .line 76
    .line 77
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 78
    .line 79
    .line 80
    return-object p1

    .line 81
    :pswitch_a
    check-cast p1, Ljava/lang/String;

    .line 82
    .line 83
    new-instance p1, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    return-object p1

    .line 89
    :pswitch_b
    check-cast p1, Ljava/util/Map;

    .line 90
    .line 91
    filled-new-array {v1}, [Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {p1, v0}, Lcom/sgscq/vpn/p5;->T(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    return-object p1

    .line 100
    :pswitch_c
    check-cast p1, Ljava/lang/String;

    .line 101
    .line 102
    new-instance p1, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    return-object p1

    .line 108
    :pswitch_d
    check-cast p1, Ljava/lang/String;

    .line 109
    .line 110
    sget-object p1, Lcom/sgscq/vpn/a5;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 111
    .line 112
    new-instance p1, Ljava/lang/Object;

    .line 113
    .line 114
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 115
    .line 116
    .line 117
    return-object p1

    .line 118
    :pswitch_e
    check-cast p1, Ljava/lang/String;

    .line 119
    .line 120
    new-instance p1, Ljava/lang/Object;

    .line 121
    .line 122
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 123
    .line 124
    .line 125
    return-object p1

    .line 126
    :pswitch_f
    check-cast p1, Ljava/lang/String;

    .line 127
    .line 128
    sget-object p1, Lcom/sgscq/vpn/y2;->X:[Ljava/lang/String;

    .line 129
    .line 130
    new-instance p1, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .line 134
    .line 135
    return-object p1

    .line 136
    :pswitch_10
    check-cast p1, Ljava/lang/String;

    .line 137
    .line 138
    sget-object p1, Lcom/sgscq/vpn/y2;->X:[Ljava/lang/String;

    .line 139
    .line 140
    new-instance p1, Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .line 144
    .line 145
    return-object p1

    .line 146
    :pswitch_11
    check-cast p1, Ljava/lang/String;

    .line 147
    .line 148
    sget-object p1, Lcom/sgscq/vpn/w1;->U:Ljava/util/HashSet;

    .line 149
    .line 150
    new-instance p1, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .line 154
    .line 155
    return-object p1

    .line 156
    :pswitch_12
    check-cast p1, Ljava/lang/String;

    .line 157
    .line 158
    sget-object p1, Lcom/sgscq/vpn/w1;->U:Ljava/util/HashSet;

    .line 159
    .line 160
    new-instance p1, Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .line 164
    .line 165
    return-object p1

    .line 166
    :pswitch_13
    check-cast p1, Ljava/lang/String;

    .line 167
    .line 168
    sget-object p1, Lcom/sgscq/vpn/w1;->U:Ljava/util/HashSet;

    .line 169
    .line 170
    new-instance p1, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .line 174
    .line 175
    return-object p1

    .line 176
    :pswitch_14
    check-cast p1, Lcom/sgscq/vpn/o1;

    .line 177
    .line 178
    iget-object p1, p1, Lcom/sgscq/vpn/o1;->a:Ljava/lang/String;

    .line 179
    .line 180
    return-object p1

    .line 181
    :pswitch_15
    check-cast p1, Lcom/sgscq/vpn/p1;

    .line 182
    .line 183
    iget-object p1, p1, Lcom/sgscq/vpn/p1;->a:Ljava/lang/String;

    .line 184
    .line 185
    return-object p1

    .line 186
    :pswitch_16
    check-cast p1, Ljava/lang/Integer;

    .line 187
    .line 188
    sget-object p1, Lcom/sgscq/vpn/m1;->a:[I

    .line 189
    .line 190
    new-instance p1, Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .line 194
    .line 195
    return-object p1

    .line 196
    :pswitch_17
    check-cast p1, Ljava/util/Map$Entry;

    .line 197
    .line 198
    invoke-static {p1}, Lcom/sgscq/battle/api/BattleCanonicalJson;->a(Ljava/util/Map$Entry;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    return-object p1

    .line 203
    :goto_0
    check-cast p1, Lcom/sgscq/vpn/v5;

    .line 204
    .line 205
    iget-object p1, p1, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 206
    .line 207
    return-object p1

    .line 208
    nop

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
