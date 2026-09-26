.class public final Lcom/sgscq/vpn/handler/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/handler/k;->a:Ljava/lang/String;

    iput p2, p0, Lcom/sgscq/vpn/handler/k;->b:I

    iput p3, p0, Lcom/sgscq/vpn/handler/k;->c:I

    iput p4, p0, Lcom/sgscq/vpn/handler/k;->d:I

    iput-object p5, p0, Lcom/sgscq/vpn/handler/k;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/sgscq/vpn/handler/k;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/sgscq/vpn/handler/k;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/sgscq/vpn/handler/k;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/sgscq/vpn/handler/k;->i:Ljava/lang/String;

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/handler/k;
    .locals 2

    .line 1
    sget-object v0, Lcom/sgscq/vpn/handler/m;->a:[Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "600050"

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "142022"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x55

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    const-string v0, "600007"

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const-string v0, "121007"

    .line 26
    .line 27
    const/16 v1, 0x56

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-string v0, "600051"

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const/16 v0, 0x57

    .line 39
    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :cond_2
    const-string v0, "600008"

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    const-string v0, "121006"

    .line 51
    .line 52
    const/16 v1, 0x58

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const-string v0, "600087"

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    const-string v0, "141002"

    .line 64
    .line 65
    const/16 v1, 0x75

    .line 66
    .line 67
    :goto_0
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/m;->k(Ljava/lang/String;I)Lcom/sgscq/vpn/cloud/a;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    goto :goto_2

    .line 72
    :cond_4
    const-string v0, "791460"

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const-string v1, "121004"

    .line 79
    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    const/16 v0, 0x5a

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_5
    const-string v0, "791773"

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    const/16 v0, 0x5b

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_6
    const-string v0, "791461"

    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    const-string v1, "142009"

    .line 103
    .line 104
    if-eqz v0, :cond_7

    .line 105
    .line 106
    const/16 v0, 0x5c

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_7
    const-string v0, "791462"

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_8

    .line 116
    .line 117
    const/16 v0, 0x5d

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_8
    const-string v0, "791487"

    .line 121
    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    const-string v1, "142008"

    .line 127
    .line 128
    if-eqz v0, :cond_9

    .line 129
    .line 130
    const/16 v0, 0x5f

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_9
    const-string v0, "791488"

    .line 134
    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_a

    .line 140
    .line 141
    const/16 v0, 0x60

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_a
    const-string v0, "791489"

    .line 145
    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_b

    .line 151
    .line 152
    const/16 v0, 0x61

    .line 153
    .line 154
    :goto_1
    invoke-static {v1, v0}, Lcom/sgscq/vpn/handler/m;->k(Ljava/lang/String;I)Lcom/sgscq/vpn/cloud/a;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    :goto_2
    const/4 v1, 0x1

    .line 159
    invoke-static {p1, v1, p0, p2, v0}, Lcom/sgscq/vpn/handler/k;->b(Ljava/lang/String;IILjava/lang/String;Lcom/sgscq/vpn/cloud/a;)Lcom/sgscq/vpn/handler/k;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    return-object p0

    .line 164
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 165
    .line 166
    const-string p2, "Missing daily adventure presentation for item "

    .line 167
    .line 168
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p0
.end method

.method public static b(Ljava/lang/String;IILjava/lang/String;Lcom/sgscq/vpn/cloud/a;)Lcom/sgscq/vpn/handler/k;
    .locals 11

    .line 1
    const/4 v4, 0x2

    new-instance v10, Lcom/sgscq/vpn/handler/k;

    const-string v5, "Item"

    iget-object v6, p4, Lcom/sgscq/vpn/cloud/a;->a:Ljava/lang/String;

    iget-object v7, p4, Lcom/sgscq/vpn/cloud/a;->b:Ljava/lang/String;

    iget-object v8, p4, Lcom/sgscq/vpn/cloud/a;->c:Ljava/lang/String;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/sgscq/vpn/handler/k;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sgscq/vpn/w1;->c1(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "name"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "itemname"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static d(I)Lcom/sgscq/vpn/handler/k;
    .locals 6

    .line 1
    const/4 v0, 0x5

    .line 2
    if-gt p0, v0, :cond_0

    .line 3
    .line 4
    const-string v1, "791461"

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-string v1, "791462"

    .line 8
    .line 9
    :goto_0
    const/4 v2, 0x1

    .line 10
    const/16 v3, 0x14

    .line 11
    .line 12
    if-lt p0, v3, :cond_1

    .line 13
    .line 14
    const/4 v4, 0x2

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move v4, v2

    .line 17
    :goto_1
    invoke-static {v1}, Lcom/sgscq/vpn/handler/k;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    if-lt p0, v3, :cond_2

    .line 22
    .line 23
    const/16 p0, 0x5e

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_2
    if-gt p0, v0, :cond_3

    .line 27
    .line 28
    const/16 p0, 0x5c

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_3
    const/16 p0, 0x5d

    .line 32
    .line 33
    :goto_2
    const-string v0, "142009"

    .line 34
    .line 35
    invoke-static {v0, p0}, Lcom/sgscq/vpn/handler/m;->k(Ljava/lang/String;I)Lcom/sgscq/vpn/cloud/a;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {v1, v4, v2, v5, p0}, Lcom/sgscq/vpn/handler/k;->b(Ljava/lang/String;IILjava/lang/String;Lcom/sgscq/vpn/cloud/a;)Lcom/sgscq/vpn/handler/k;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static e(I)Lcom/sgscq/vpn/handler/k;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0xc8

    .line 3
    .line 4
    const-string v2, "121004"

    .line 5
    .line 6
    if-lt p0, v1, :cond_0

    .line 7
    .line 8
    const-string p0, "791773"

    .line 9
    .line 10
    invoke-static {p0}, Lcom/sgscq/vpn/handler/k;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/16 v3, 0x5b

    .line 15
    .line 16
    invoke-static {v2, v3}, Lcom/sgscq/vpn/handler/m;->k(Ljava/lang/String;I)Lcom/sgscq/vpn/cloud/a;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {p0, v0, v0, v1, v2}, Lcom/sgscq/vpn/handler/k;->b(Ljava/lang/String;IILjava/lang/String;Lcom/sgscq/vpn/cloud/a;)Lcom/sgscq/vpn/handler/k;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    div-int/lit8 v1, p0, 0x32

    .line 26
    .line 27
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const-string v3, "791460"

    .line 32
    .line 33
    invoke-static {v3}, Lcom/sgscq/vpn/handler/k;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/16 v5, 0x64

    .line 38
    .line 39
    if-lt p0, v5, :cond_1

    .line 40
    .line 41
    const/16 p0, 0x5a

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/16 p0, 0x59

    .line 45
    .line 46
    :goto_0
    invoke-static {v2, p0}, Lcom/sgscq/vpn/handler/m;->k(Ljava/lang/String;I)Lcom/sgscq/vpn/cloud/a;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {v3, v1, v0, v4, p0}, Lcom/sgscq/vpn/handler/k;->b(Ljava/lang/String;IILjava/lang/String;Lcom/sgscq/vpn/cloud/a;)Lcom/sgscq/vpn/handler/k;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method
