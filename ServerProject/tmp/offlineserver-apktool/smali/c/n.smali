.class public final Lc/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc/n;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;Ljava/util/Map;)I
    .locals 3

    .line 1
    iget v0, p0, Lc/n;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    :pswitch_0
    goto/16 :goto_1

    .line 8
    .line 9
    :pswitch_1
    invoke-static {p1}, Lcom/sgscq/vpn/handler/h1;->W(Ljava/util/Map;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {p2}, Lcom/sgscq/vpn/handler/h1;->W(Ljava/util/Map;)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :pswitch_2
    invoke-static {p1}, Lcom/sgscq/vpn/handler/h1;->W(Ljava/util/Map;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-static {p2}, Lcom/sgscq/vpn/handler/h1;->W(Ljava/util/Map;)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :pswitch_3
    const-string v0, "order"

    .line 36
    .line 37
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1, v1}, Lcom/sgscq/vpn/handler/c1;->f(Ljava/lang/Object;I)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-static {p2, v1}, Lcom/sgscq/vpn/handler/c1;->f(Ljava/lang/Object;I)I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1

    .line 58
    :pswitch_4
    invoke-static {p1}, Lcom/sgscq/vpn/handler/b1;->n0(Ljava/util/Map;)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-static {p2}, Lcom/sgscq/vpn/handler/b1;->n0(Ljava/util/Map;)I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    return p1

    .line 71
    :pswitch_5
    invoke-static {p1}, Lcom/sgscq/vpn/handler/b1;->n0(Ljava/util/Map;)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-static {p2}, Lcom/sgscq/vpn/handler/b1;->n0(Ljava/util/Map;)I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    return p1

    .line 84
    :pswitch_6
    invoke-static {p1, p2}, Lcom/sgscq/vpn/handler/b1;->q(Ljava/util/Map;Ljava/util/Map;)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    return p1

    .line 89
    :pswitch_7
    invoke-static {p1}, Lcom/sgscq/vpn/handler/v0;->y(Ljava/util/Map;)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-static {p2}, Lcom/sgscq/vpn/handler/v0;->y(Ljava/util/Map;)I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    return p1

    .line 102
    :pswitch_8
    invoke-static {p1}, Lcom/sgscq/vpn/handler/p0;->l0(Ljava/util/Map;)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    invoke-static {p2}, Lcom/sgscq/vpn/handler/p0;->l0(Ljava/util/Map;)I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    return p1

    .line 115
    :pswitch_9
    invoke-static {p1}, Lcom/sgscq/vpn/handler/p0;->l0(Ljava/util/Map;)I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    invoke-static {p2}, Lcom/sgscq/vpn/handler/p0;->l0(Ljava/util/Map;)I

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    return p1

    .line 128
    :pswitch_a
    const-string v0, "record_data"

    .line 129
    .line 130
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-static {v2, v1}, Lcom/sgscq/vpn/y2;->C3(Ljava/lang/Object;I)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {v0, v1}, Lcom/sgscq/vpn/y2;->C3(Ljava/lang/Object;I)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    invoke-static {v2, v0}, Ljava/lang/Integer;->compare(II)I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_0

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_0
    const-string v0, "user_id"

    .line 154
    .line 155
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    :goto_0
    return v0

    .line 176
    :goto_1
    invoke-static {p1}, Lcom/sgscq/vpn/handler/h1;->W(Ljava/util/Map;)I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    invoke-static {p2}, Lcom/sgscq/vpn/handler/h1;->W(Ljava/util/Map;)I

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    return p1

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget v0, p0, Lc/n;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto/16 :goto_1

    .line 7
    .line 8
    :pswitch_0
    check-cast p1, Ljava/util/Map;

    .line 9
    .line 10
    check-cast p2, Ljava/util/Map;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lc/n;->a(Ljava/util/Map;Ljava/util/Map;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :pswitch_1
    check-cast p1, Ljava/util/Map;

    .line 18
    .line 19
    check-cast p2, Ljava/util/Map;

    .line 20
    .line 21
    invoke-virtual {p0, p1, p2}, Lc/n;->a(Ljava/util/Map;Ljava/util/Map;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :pswitch_2
    check-cast p1, Ljava/util/Map;

    .line 27
    .line 28
    check-cast p2, Ljava/util/Map;

    .line 29
    .line 30
    invoke-virtual {p0, p1, p2}, Lc/n;->a(Ljava/util/Map;Ljava/util/Map;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :pswitch_3
    check-cast p1, Ljava/util/Map;

    .line 36
    .line 37
    check-cast p2, Ljava/util/Map;

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, Lc/n;->a(Ljava/util/Map;Ljava/util/Map;)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    return p1

    .line 44
    :pswitch_4
    check-cast p1, Ljava/util/Map;

    .line 45
    .line 46
    check-cast p2, Ljava/util/Map;

    .line 47
    .line 48
    invoke-virtual {p0, p1, p2}, Lc/n;->a(Ljava/util/Map;Ljava/util/Map;)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    return p1

    .line 53
    :pswitch_5
    check-cast p1, Ljava/util/Map;

    .line 54
    .line 55
    check-cast p2, Ljava/util/Map;

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Lc/n;->a(Ljava/util/Map;Ljava/util/Map;)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    return p1

    .line 62
    :pswitch_6
    check-cast p1, Ljava/util/Map;

    .line 63
    .line 64
    check-cast p2, Ljava/util/Map;

    .line 65
    .line 66
    invoke-virtual {p0, p1, p2}, Lc/n;->a(Ljava/util/Map;Ljava/util/Map;)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    return p1

    .line 71
    :pswitch_7
    check-cast p1, Ljava/util/Map;

    .line 72
    .line 73
    check-cast p2, Ljava/util/Map;

    .line 74
    .line 75
    invoke-virtual {p0, p1, p2}, Lc/n;->a(Ljava/util/Map;Ljava/util/Map;)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    return p1

    .line 80
    :pswitch_8
    check-cast p1, Ljava/util/Map;

    .line 81
    .line 82
    check-cast p2, Ljava/util/Map;

    .line 83
    .line 84
    invoke-virtual {p0, p1, p2}, Lc/n;->a(Ljava/util/Map;Ljava/util/Map;)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    return p1

    .line 89
    :pswitch_9
    check-cast p1, Lcom/sgscq/vpn/f5;

    .line 90
    .line 91
    check-cast p2, Lcom/sgscq/vpn/f5;

    .line 92
    .line 93
    iget v0, p1, Lcom/sgscq/vpn/f5;->a:I

    .line 94
    .line 95
    iget v1, p2, Lcom/sgscq/vpn/f5;->a:I

    .line 96
    .line 97
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    iget p1, p1, Lcom/sgscq/vpn/f5;->b:I

    .line 105
    .line 106
    iget p2, p2, Lcom/sgscq/vpn/f5;->b:I

    .line 107
    .line 108
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    :goto_0
    return v0

    .line 113
    :pswitch_a
    check-cast p1, Ljava/util/Map;

    .line 114
    .line 115
    check-cast p2, Ljava/util/Map;

    .line 116
    .line 117
    invoke-virtual {p0, p1, p2}, Lc/n;->a(Ljava/util/Map;Ljava/util/Map;)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    return p1

    .line 122
    :pswitch_b
    check-cast p1, Ljava/lang/Comparable;

    .line 123
    .line 124
    check-cast p2, Ljava/lang/Comparable;

    .line 125
    .line 126
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    return p1

    .line 131
    :goto_1
    check-cast p1, Ljava/util/Map;

    .line 132
    .line 133
    check-cast p2, Ljava/util/Map;

    .line 134
    .line 135
    invoke-virtual {p0, p1, p2}, Lc/n;->a(Ljava/util/Map;Ljava/util/Map;)I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    return p1

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
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
