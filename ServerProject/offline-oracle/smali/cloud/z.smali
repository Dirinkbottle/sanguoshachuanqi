.class public final Lcom/sgscq/vpn/cloud/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:La/o;

.field public static final d:Ljava/lang/Object;

.field public static volatile e:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lm/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, La/o;

    invoke-direct {v0}, La/o;-><init>()V

    sput-object v0, Lcom/sgscq/vpn/cloud/z;->c:La/o;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sgscq/vpn/cloud/z;->d:Ljava/lang/Object;

    const-string v0, ""

    sput-object v0, Lcom/sgscq/vpn/cloud/z;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sgscq/vpn/cloud/z;->a:Landroid/content/Context;

    new-instance v0, Lm/e;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Lm/e;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/z;->b:Lm/e;

    return-void
.end method

.method public static A(La/t;)Lcom/sgscq/vpn/cloud/j;
    .locals 11

    .line 1
    new-instance v8, Lcom/sgscq/vpn/cloud/j;

    const-string v0, "id"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "sender_id"

    const-string v5, ""

    invoke-static {p0, v0, v5}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "sender_nickname"

    const-string v7, "\u73a9\u5bb6"

    invoke-static {p0, v0, v7}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "content"

    invoke-static {p0, v0, v5}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "created_at"

    invoke-static {p0, v0, v1, v2}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    move-result-wide v9

    move-object v0, v8

    move-wide v1, v3

    move-object v3, v6

    move-object v4, v7

    move-wide v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/sgscq/vpn/cloud/j;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v8
.end method

.method public static B(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/r;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    move-result-object p0

    const-string v0, "profile"

    invoke-static {p0, v0}, Lcom/sgscq/vpn/cloud/z;->g(La/t;Ljava/lang/String;)La/t;

    move-result-object p0

    const-string v0, "cloud_character_id"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sgscq/vpn/cloud/z;->J(La/t;)Lcom/sgscq/vpn/cloud/r;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u597d\u53cb\u9635\u5bb9\u54cd\u5e94\u4e0d\u5b8c\u6574"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static C(La/t;I)Lcom/sgscq/vpn/battle/a;
    .locals 13

    .line 1
    const-string v0, "goods_list"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, La/t;->o(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, La/t;->m(Ljava/lang/String;)La/q;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    instance-of v1, v1, La/p;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v0}, La/t;->n(Ljava/lang/String;)La/p;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    if-eqz v0, :cond_4

    .line 27
    .line 28
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, La/p;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const-string v3, ""

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, La/q;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    instance-of v5, v2, La/t;

    .line 56
    .line 57
    if-nez v5, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {v2}, La/q;->f()La/t;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v5, "item_id"

    .line 65
    .line 66
    invoke-static {v2, v5, v3}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_2

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    new-instance v3, Lcom/sgscq/vpn/cloud/l;

    .line 82
    .line 83
    const-string v5, "pk_id"

    .line 84
    .line 85
    invoke-static {v2, v5, v4}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    const-string v5, "item_num"

    .line 90
    .line 91
    const/4 v8, 0x1

    .line 92
    invoke-static {v2, v5, v8}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    const-string v5, "donate"

    .line 97
    .line 98
    invoke-static {v2, v5, v4}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    const-string v5, "exchange_num"

    .line 103
    .line 104
    invoke-static {v2, v5, v4}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 105
    .line 106
    .line 107
    move-result v10

    .line 108
    const-string v5, "exchanged_num"

    .line 109
    .line 110
    invoke-static {v2, v5, v4}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 111
    .line 112
    .line 113
    move-result v11

    .line 114
    const-string v4, "can_exchange"

    .line 115
    .line 116
    invoke-static {v2, v4}, Lcom/sgscq/vpn/cloud/z;->d(La/t;Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    move-object v5, v3

    .line 121
    invoke-direct/range {v5 .. v12}, Lcom/sgscq/vpn/cloud/l;-><init>(ILjava/lang/String;IIIIZ)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_3
    const-string v0, "user_donate"

    .line 129
    .line 130
    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    invoke-static {p0, v0, p1}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    new-instance v0, Lcom/sgscq/vpn/battle/a;

    .line 139
    .line 140
    const-string v2, "catalog_day"

    .line 141
    .line 142
    invoke-static {p0, v2, v3}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-direct {v0, p1, p0, v1}, Lcom/sgscq/vpn/battle/a;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 147
    .line 148
    .line 149
    return-object v0

    .line 150
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 151
    .line 152
    const-string p1, "\u4e91\u516c\u4f1a\u5546\u54c1\u54cd\u5e94\u4e0d\u5b8c\u6574"

    .line 153
    .line 154
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p0
.end method

.method public static D(La/t;)Lcom/sgscq/vpn/cloud/m;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    new-instance v14, Lcom/sgscq/vpn/cloud/m;

    const-string v1, "union_id"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    move-result v1

    const-string v3, "union_name"

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "union_level"

    invoke-static {v0, v5, v2}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "leader_nickname"

    invoke-static {v0, v6, v4}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "level_union_exp"

    invoke-static {v0, v7, v2}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    move-result v7

    const-string v8, "level_up_exp"

    invoke-static {v0, v8, v2}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    move-result v8

    const-string v9, "rank"

    invoke-static {v0, v9, v2}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    move-result v9

    const-string v10, "user_num"

    invoke-static {v0, v10, v2}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    move-result v10

    const-string v11, "user_limit"

    const/16 v12, 0x32

    invoke-static {v0, v11, v12}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    move-result v11

    const-string v12, "notice"

    invoke-static {v0, v12, v4}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "union_sign"

    invoke-static {v0, v13, v4}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v4, "union_fightPoint"

    invoke-static {v0, v4, v2}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    move-result v15

    const-string v2, "apply_state"

    const/4 v4, 0x1

    invoke-static {v0, v2, v4}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    move-result v16

    move-object v0, v14

    move-object v2, v3

    move v3, v5

    move-object v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move-object v10, v12

    move-object v11, v13

    move v12, v15

    move/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lcom/sgscq/vpn/cloud/m;-><init>(ILjava/lang/String;ILjava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;II)V

    return-object v14
.end method

.method public static E(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/g;
    .locals 8

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "guild"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, La/t;->m(Ljava/lang/String;)La/q;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    instance-of v2, v0, La/t;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, La/q;->f()La/t;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/z;->D(La/t;)Lcom/sgscq/vpn/cloud/m;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v3, v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v3, v1

    .line 29
    :goto_0
    const-string v0, "membership"

    .line 30
    .line 31
    invoke-virtual {p0, v0}, La/t;->m(Ljava/lang/String;)La/q;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    instance-of v2, v0, La/t;

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, La/q;->f()La/t;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/z;->G(La/t;)Lcom/sgscq/vpn/cloud/o;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :cond_1
    move-object v4, v1

    .line 50
    new-instance v0, Lcom/sgscq/vpn/cloud/g;

    .line 51
    .line 52
    const-string v1, "pending_application_count"

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-static {p0, v1, v2}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    const-string v1, "latest_application_id"

    .line 60
    .line 61
    const-wide/16 v6, 0x0

    .line 62
    .line 63
    invoke-static {p0, v1, v6, v7}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    .line 64
    .line 65
    .line 66
    move-result-wide v6

    .line 67
    move-object v2, v0

    .line 68
    invoke-direct/range {v2 .. v7}, Lcom/sgscq/vpn/cloud/g;-><init>(Lcom/sgscq/vpn/cloud/m;Lcom/sgscq/vpn/cloud/o;IJ)V

    .line 69
    .line 70
    .line 71
    return-object v0
.end method

.method public static F(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/q;
    .locals 15

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "roster"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, La/t;->o(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v0}, La/t;->m(Ljava/lang/String;)La/q;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    instance-of v1, v1, La/p;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v0}, La/t;->n(Ljava/lang/String;)La/p;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    if-eqz v0, :cond_6

    .line 31
    .line 32
    new-instance v1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, La/p;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v3, 0x0

    .line 46
    const-string v4, ""

    .line 47
    .line 48
    if-eqz v2, :cond_5

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, La/q;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    instance-of v5, v2, La/t;

    .line 60
    .line 61
    if-nez v5, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {v2}, La/q;->f()La/t;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const-string v5, "profile"

    .line 69
    .line 70
    invoke-virtual {v2, v5}, La/t;->o(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_2

    .line 75
    .line 76
    invoke-virtual {v2, v5}, La/t;->m(Ljava/lang/String;)La/q;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    instance-of v6, v6, La/t;

    .line 84
    .line 85
    if-eqz v6, :cond_2

    .line 86
    .line 87
    iget-object v6, v2, La/t;->a:Lc/s;

    .line 88
    .line 89
    invoke-virtual {v6, v5}, Lc/s;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, La/t;

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    new-instance v5, La/t;

    .line 97
    .line 98
    invoke-direct {v5}, La/t;-><init>()V

    .line 99
    .line 100
    .line 101
    :goto_2
    const-string v6, "cloud_character_id"

    .line 102
    .line 103
    invoke-static {v2, v6, v4}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_3

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    invoke-virtual {v5, v6}, La/t;->o(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-nez v4, :cond_4

    .line 123
    .line 124
    invoke-virtual {v5, v6, v8}, La/t;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    new-instance v4, Lcom/sgscq/vpn/cloud/p;

    .line 128
    .line 129
    const-string v6, "nickname"

    .line 130
    .line 131
    const-string v7, "\u73a9\u5bb6"

    .line 132
    .line 133
    invoke-static {v2, v6, v7}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    const-string v6, "level"

    .line 142
    .line 143
    const/4 v7, 0x1

    .line 144
    invoke-static {v2, v6, v7}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 145
    .line 146
    .line 147
    const-string v6, "vip_level"

    .line 148
    .line 149
    invoke-static {v2, v6, v3}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 150
    .line 151
    .line 152
    const-string v6, "general_id"

    .line 153
    .line 154
    const-string v10, "131001"

    .line 155
    .line 156
    invoke-static {v2, v6, v10}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    invoke-static {v2}, Lcom/sgscq/vpn/cloud/z;->m(La/t;)D

    .line 161
    .line 162
    .line 163
    move-result-wide v11

    .line 164
    const-string v6, "battle_id"

    .line 165
    .line 166
    invoke-static {v2, v6, v7}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 167
    .line 168
    .line 169
    move-result v13

    .line 170
    const-string v6, "pos"

    .line 171
    .line 172
    invoke-static {v2, v6, v7}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 173
    .line 174
    .line 175
    move-result v14

    .line 176
    const-string v6, "source_revision"

    .line 177
    .line 178
    invoke-static {v2, v6, v3}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 179
    .line 180
    .line 181
    invoke-static {v5}, Lcom/sgscq/vpn/cloud/z;->J(La/t;)Lcom/sgscq/vpn/cloud/r;

    .line 182
    .line 183
    .line 184
    move-object v7, v4

    .line 185
    invoke-direct/range {v7 .. v14}, Lcom/sgscq/vpn/cloud/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DII)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    goto/16 :goto_1

    .line 192
    .line 193
    :cond_5
    new-instance v0, Lcom/sgscq/vpn/cloud/q;

    .line 194
    .line 195
    const-string v2, "battle_day"

    .line 196
    .line 197
    invoke-static {p0, v2, v4}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    const-string v2, "snapshot_at_ms"

    .line 201
    .line 202
    const-wide/16 v4, 0x0

    .line 203
    .line 204
    invoke-static {p0, v2, v4, v5}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    .line 205
    .line 206
    .line 207
    move-result-wide v4

    .line 208
    invoke-direct {v0, v3, v4, v5, v1}, Lcom/sgscq/vpn/cloud/q;-><init>(IJLjava/util/ArrayList;)V

    .line 209
    .line 210
    .line 211
    return-object v0

    .line 212
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 213
    .line 214
    const-string v0, "\u4e91\u516c\u4f1a\u6218\u9635\u5bb9\u54cd\u5e94\u4e0d\u5b8c\u6574"

    .line 215
    .line 216
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw p0
.end method

.method public static G(La/t;)Lcom/sgscq/vpn/cloud/o;
    .locals 10

    .line 1
    new-instance v7, Lcom/sgscq/vpn/cloud/o;

    const-string v0, "role"

    const-string v1, "member"

    invoke-static {p0, v0, v1}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "user_role"

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    move-result v1

    const-string v0, "user_donate"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    move-result v3

    const-string v0, "today_donate_num"

    invoke-static {p0, v0, v2}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    move-result v4

    const-string v0, "today_donate_type"

    invoke-static {p0, v0, v2}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    move-result v5

    const-string v0, "user_last_login_time"

    const-wide/16 v8, 0x0

    invoke-static {p0, v0, v8, v9}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    move-result-wide v8

    move-object v0, v7

    move v2, v3

    move v3, v4

    move v4, v5

    move-wide v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/sgscq/vpn/cloud/o;-><init>(IIIIJ)V

    return-object v7
.end method

.method public static H(Ljava/lang/String;)Lcom/sgscq/vpn/d3;
    .locals 10

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "upserts"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, La/t;->o(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, La/t;->m(Ljava/lang/String;)La/q;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    instance-of v1, v1, La/p;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, v0}, La/t;->n(Ljava/lang/String;)La/p;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v0, v2

    .line 31
    :goto_0
    const-string v1, "deleted_ids"

    .line 32
    .line 33
    invoke-virtual {p0, v1}, La/t;->o(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0, v1}, La/t;->m(Ljava/lang/String;)La/q;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    instance-of v3, v3, La/p;

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0, v1}, La/t;->n(Ljava/lang/String;)La/p;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :cond_1
    if-eqz v0, :cond_7

    .line 55
    .line 56
    if-eqz v2, :cond_7

    .line 57
    .line 58
    new-instance v5, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    new-instance v1, Ljava/util/HashSet;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, La/p;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_4

    .line 77
    .line 78
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, La/q;

    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    instance-of v4, v3, La/x;

    .line 88
    .line 89
    if-eqz v4, :cond_3

    .line 90
    .line 91
    invoke-virtual {v3}, La/q;->i()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-nez v4, :cond_2

    .line 104
    .line 105
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_2

    .line 110
    .line 111
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 116
    .line 117
    const-string v0, "\u4e91\u7aef\u5bf9\u624b\u5220\u9664 ID \u65e0\u6548"

    .line 118
    .line 119
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p0

    .line 123
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 124
    .line 125
    const-string v0, "\u4e91\u7aef\u5bf9\u624b\u5220\u9664 ID \u683c\u5f0f\u9519\u8bef"

    .line 126
    .line 127
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p0

    .line 131
    :cond_4
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/z;->K(La/p;)Ljava/util/ArrayList;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_6

    .line 144
    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    check-cast v2, Lcom/sgscq/vpn/cloud/r;

    .line 150
    .line 151
    iget-object v2, v2, Lcom/sgscq/vpn/cloud/r;->a:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_5

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 161
    .line 162
    const-string v0, "\u4e91\u7aef\u5bf9\u624b\u589e\u91cf ID \u51b2\u7a81"

    .line 163
    .line 164
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p0

    .line 168
    :cond_6
    new-instance v0, Lcom/sgscq/vpn/d3;

    .line 169
    .line 170
    const-string v1, "next_cursor"

    .line 171
    .line 172
    const-string v2, ""

    .line 173
    .line 174
    invoke-static {p0, v1, v2}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    add-int/2addr v2, v1

    .line 191
    const-string v1, "total_count"

    .line 192
    .line 193
    invoke-static {p0, v1, v2}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    const-string v1, "target_generation"

    .line 198
    .line 199
    const-wide/16 v2, 0x0

    .line 200
    .line 201
    invoke-static {p0, v1, v2, v3}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    .line 202
    .line 203
    .line 204
    move-result-wide v8

    .line 205
    move-object v3, v0

    .line 206
    invoke-direct/range {v3 .. v9}, Lcom/sgscq/vpn/d3;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IJ)V

    .line 207
    .line 208
    .line 209
    return-object v0

    .line 210
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 211
    .line 212
    const-string v0, "\u4e91\u7aef\u5bf9\u624b\u589e\u91cf\u54cd\u5e94\u4e0d\u5b8c\u6574"

    .line 213
    .line 214
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw p0
.end method

.method public static I(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/g;
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "opponents"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, La/t;->o(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v0}, La/t;->m(Ljava/lang/String;)La/q;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    instance-of v1, v1, La/p;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v0}, La/t;->n(Ljava/lang/String;)La/p;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/z;->K(La/p;)Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    new-instance v0, Lcom/sgscq/vpn/cloud/g;

    .line 37
    .line 38
    const-string v1, "next_cursor"

    .line 39
    .line 40
    const-string v2, ""

    .line 41
    .line 42
    invoke-static {p0, v1, v2}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const-string v2, "total_count"

    .line 55
    .line 56
    invoke-static {p0, v2, v1}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    const-string v1, "catalog_generation"

    .line 61
    .line 62
    const-wide/16 v3, 0x0

    .line 63
    .line 64
    invoke-static {p0, v1, v3, v4}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v3

    .line 68
    move-object v1, v0

    .line 69
    invoke-direct/range {v1 .. v6}, Lcom/sgscq/vpn/cloud/g;-><init>(IJLjava/lang/String;Ljava/util/ArrayList;)V

    .line 70
    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    const-string v0, "\u4e91\u7aef\u5bf9\u624b\u54cd\u5e94\u4e0d\u5b8c\u6574"

    .line 76
    .line 77
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p0
.end method

.method public static J(La/t;)Lcom/sgscq/vpn/cloud/r;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v16, Lcom/sgscq/vpn/cloud/r;

    .line 4
    .line 5
    const-string v1, "cloud_character_id"

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "nickname"

    .line 18
    .line 19
    const-string v3, "\u73a9\u5bb6"

    .line 20
    .line 21
    invoke-static {v0, v2, v3}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "level"

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    invoke-static {v0, v3, v4}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const-string v5, "vip_level"

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    invoke-static {v0, v5, v6}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/cloud/z;->m(La/t;)D

    .line 44
    .line 45
    .line 46
    move-result-wide v7

    .line 47
    const-string v9, "ladder_rank"

    .line 48
    .line 49
    const/16 v10, 0x3e9

    .line 50
    .line 51
    invoke-static {v0, v9, v10}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-lt v9, v4, :cond_0

    .line 56
    .line 57
    const/16 v4, 0x270f

    .line 58
    .line 59
    if-gt v9, v4, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move v9, v10

    .line 63
    :goto_0
    const-string v4, "ladder_rank_verified_until_ms"

    .line 64
    .line 65
    const-wide/16 v10, 0x0

    .line 66
    .line 67
    invoke-static {v0, v4, v10, v11}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    .line 68
    .line 69
    .line 70
    move-result-wide v10

    .line 71
    const-string v4, "govern"

    .line 72
    .line 73
    invoke-static {v0, v4, v6}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 74
    .line 75
    .line 76
    move-result v12

    .line 77
    const-string v4, "revision"

    .line 78
    .line 79
    invoke-static {v0, v4, v6}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 80
    .line 81
    .line 82
    const-string v4, "team_general"

    .line 83
    .line 84
    invoke-static {v0, v4}, Lcom/sgscq/vpn/cloud/z;->v(La/t;Ljava/lang/String;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v13

    .line 88
    const-string v4, "buddy_general"

    .line 89
    .line 90
    invoke-static {v0, v4}, Lcom/sgscq/vpn/cloud/z;->v(La/t;Ljava/lang/String;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v14

    .line 94
    const-string v4, "generals"

    .line 95
    .line 96
    invoke-static {v0, v4}, Lcom/sgscq/vpn/cloud/z;->v(La/t;Ljava/lang/String;)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v15

    .line 100
    const-string v4, "skills"

    .line 101
    .line 102
    invoke-static {v0, v4}, Lcom/sgscq/vpn/cloud/z;->v(La/t;Ljava/lang/String;)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v17

    .line 106
    const-string v4, "equipment"

    .line 107
    .line 108
    invoke-static {v0, v4}, Lcom/sgscq/vpn/cloud/z;->v(La/t;Ljava/lang/String;)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v18

    .line 112
    move-object/from16 v0, v16

    .line 113
    .line 114
    move v4, v5

    .line 115
    move-wide v5, v7

    .line 116
    move v7, v9

    .line 117
    move-wide v8, v10

    .line 118
    move v10, v12

    .line 119
    move-object v11, v13

    .line 120
    move-object v12, v14

    .line 121
    move-object v13, v15

    .line 122
    move-object/from16 v14, v17

    .line 123
    .line 124
    move-object/from16 v15, v18

    .line 125
    .line 126
    invoke-direct/range {v0 .. v15}, Lcom/sgscq/vpn/cloud/r;-><init>(Ljava/lang/String;Ljava/lang/String;IIDIJILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 127
    .line 128
    .line 129
    return-object v16
.end method

.method public static K(La/p;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, La/p;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_3

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, La/q;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    instance-of v3, v2, La/t;

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    invoke-virtual {v2}, La/q;->f()La/t;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "cloud_character_id"

    .line 39
    .line 40
    const-string v4, ""

    .line 41
    .line 42
    invoke-static {v2, v3, v4}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_1

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_0

    .line 61
    .line 62
    invoke-static {v2}, Lcom/sgscq/vpn/cloud/z;->J(La/t;)Lcom/sgscq/vpn/cloud/r;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    const-string v0, "\u4e91\u7aef\u5bf9\u624b ID \u91cd\u590d"

    .line 73
    .line 74
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    const-string v0, "\u4e91\u7aef\u5bf9\u624b ID \u7f3a\u5931"

    .line 81
    .line 82
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p0

    .line 86
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 87
    .line 88
    const-string v0, "\u4e91\u7aef\u5bf9\u624b\u683c\u5f0f\u9519\u8bef"

    .line 89
    .line 90
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0

    .line 94
    :cond_3
    return-object v0
.end method

.method public static L(La/t;)Lcom/sgscq/vpn/cloud/x;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    const-string v1, "last_transfer_at"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "retry_after"

    const/4 v6, 0x0

    invoke-static {v0, v1, v6}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    move-result v1

    new-instance v23, Lcom/sgscq/vpn/cloud/x;

    const-string v7, "cloud_character_id"

    const-string v8, ""

    invoke-static {v0, v7, v8}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "passport_uid"

    invoke-static {v0, v7, v8}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v7, "revision"

    invoke-static {v0, v7, v6}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    move-result v11

    const-string v7, "nickname"

    invoke-static {v0, v7, v8}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v7, "level"

    invoke-static {v0, v7, v6}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    move-result v13

    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/cloud/z;->m(La/t;)D

    move-result-wide v14

    const-string v7, "last_upload_at"

    invoke-virtual {v0, v7}, La/t;->o(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v0, v7, v2, v3}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    move-result-wide v7

    move-wide/from16 v16, v7

    goto :goto_0

    :cond_0
    move-wide/from16 v16, v4

    :goto_0
    const-string v7, "last_download_at"

    invoke-virtual {v0, v7}, La/t;->o(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v0, v7, v2, v3}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    move-result-wide v4

    :cond_1
    const-string v2, "upload_retry_after"

    invoke-virtual {v0, v2}, La/t;->o(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0, v2, v6}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    move-result v2

    move/from16 v19, v2

    goto :goto_1

    :cond_2
    move/from16 v19, v1

    :goto_1
    const-string v2, "download_retry_after"

    invoke-virtual {v0, v2}, La/t;->o(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0, v2, v6}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    move-result v1

    :cond_3
    move/from16 v20, v1

    const-string v1, "cooldown_exempt"

    invoke-static {v0, v1}, Lcom/sgscq/vpn/cloud/z;->d(La/t;Ljava/lang/String;)Z

    move-result v21

    const-string v1, "server_merged"

    invoke-static {v0, v1}, Lcom/sgscq/vpn/cloud/z;->d(La/t;Ljava/lang/String;)Z

    move-result v22

    move-object/from16 v7, v23

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move v12, v13

    move-wide v13, v14

    move-wide/from16 v15, v16

    move-wide/from16 v17, v4

    invoke-direct/range {v7 .. v22}, Lcom/sgscq/vpn/cloud/x;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IDJJIIZZ)V

    return-object v23
.end method

.method public static M(La/t;)Lcom/sgscq/vpn/cloud/y;
    .locals 11

    .line 1
    new-instance v10, Lcom/sgscq/vpn/cloud/y;

    .line 2
    .line 3
    const-string v0, "cloud_character_id"

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    invoke-static {p0, v0, v1}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v0, "nickname"

    .line 16
    .line 17
    const-string v2, "\u73a9\u5bb6"

    .line 18
    .line 19
    invoke-static {p0, v0, v2}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v0, "level"

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-static {p0, v0, v3}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const-string v0, "vip_level"

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-static {p0, v0, v5}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-static {p0}, Lcom/sgscq/vpn/cloud/z;->m(La/t;)D

    .line 42
    .line 43
    .line 44
    move-result-wide v6

    .line 45
    const-string v0, "ladder_rank"

    .line 46
    .line 47
    const/16 v8, 0x3e9

    .line 48
    .line 49
    invoke-static {p0, v0, v8}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-lt v0, v3, :cond_0

    .line 54
    .line 55
    const/16 v3, 0x270f

    .line 56
    .line 57
    if-gt v0, v3, :cond_0

    .line 58
    .line 59
    move v8, v0

    .line 60
    :cond_0
    const-string v0, "general_id"

    .line 61
    .line 62
    const-string v3, "131001"

    .line 63
    .line 64
    invoke-static {p0, v0, v3}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    const-string v0, "is_invited"

    .line 69
    .line 70
    invoke-static {p0, v0}, Lcom/sgscq/vpn/cloud/z;->d(La/t;Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    move-object v0, v10

    .line 75
    move v3, v4

    .line 76
    move v4, v5

    .line 77
    move-wide v5, v6

    .line 78
    move v7, v8

    .line 79
    move-object v8, v9

    .line 80
    move v9, p0

    .line 81
    invoke-direct/range {v0 .. v9}, Lcom/sgscq/vpn/cloud/y;-><init>(Ljava/lang/String;Ljava/lang/String;IIDILjava/lang/String;Z)V

    .line 82
    .line 83
    .line 84
    return-object v10
.end method

.method public static N(Ljava/lang/String;Ljava/lang/String;)La/a;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, La/t;->o(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, La/t;->m(Ljava/lang/String;)La/q;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    instance-of v0, v0, La/p;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, p1}, La/t;->n(Ljava/lang/String;)La/p;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    if-eqz p0, :cond_4

    .line 29
    .line 30
    new-instance p1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, La/p;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, La/q;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    instance-of v1, v0, La/t;

    .line 55
    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {v0}, La/q;->f()La/t;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/z;->M(La/t;)Lcom/sgscq/vpn/cloud/y;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v1, v0, Lcom/sgscq/vpn/cloud/y;->a:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_1

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    new-instance p0, La/a;

    .line 80
    .line 81
    invoke-direct {p0, p1}, La/a;-><init>(Ljava/util/ArrayList;)V

    .line 82
    .line 83
    .line 84
    return-object p0

    .line 85
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    const-string p1, "\u4e91\u793e\u4ea4\u5217\u8868\u54cd\u5e94\u4e0d\u5b8c\u6574"

    .line 88
    .line 89
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0
.end method

.method public static U()Lcom/sgscq/vpn/cloud/e;
    .locals 8

    .line 1
    const-string v0, "environment"

    .line 2
    .line 3
    const-string v1, "release"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lc/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "POST"

    .line 10
    .line 11
    const-string v2, "/auth/integrity/challenge"

    .line 12
    .line 13
    const-string v3, ""

    .line 14
    .line 15
    sget-object v4, Lcom/sgscq/vpn/cloud/z;->c:La/o;

    .line 16
    .line 17
    invoke-virtual {v4, v0}, La/o;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    const-string v4, "application/json"

    .line 28
    .line 29
    const-string v5, ""

    .line 30
    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-static/range {v1 .. v7}, Lcom/sgscq/vpn/cloud/z;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)Lcom/sgscq/vpn/cloud/t;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "challenge_id"

    .line 48
    .line 49
    const-string v2, ""

    .line 50
    .line 51
    invoke-static {v0, v1, v2}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    return-object v0

    .line 63
    :cond_0
    new-instance v2, Lcom/sgscq/vpn/cloud/e;

    .line 64
    .line 65
    const-string v3, "offset"

    .line 66
    .line 67
    const-wide/16 v4, -0x1

    .line 68
    .line 69
    invoke-static {v0, v3, v4, v5}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    .line 70
    .line 71
    .line 72
    move-result-wide v3

    .line 73
    const-string v5, "length"

    .line 74
    .line 75
    const/4 v6, 0x0

    .line 76
    invoke-static {v0, v5, v6}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-direct {v2, v1, v3, v4, v0}, Lcom/sgscq/vpn/cloud/e;-><init>(Ljava/lang/String;JI)V

    .line 81
    .line 82
    .line 83
    return-object v2
.end method

.method public static W(Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/sgscq/vpn/cloud/a0;

    const/16 p1, 0x199

    const-string v0, "cloud_binding_changed"

    const/4 v1, 0x0

    const-string v2, "\u4e91\u8d26\u53f7\u5df2\u5207\u6362\uff0c\u5df2\u53d6\u6d88\u65e7\u89d2\u8272\u6d88\u606f\u540c\u6b65"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/sgscq/vpn/cloud/a0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static X(Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->environment:Ljava/lang/String;

    iget-object v1, p1, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->environment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    iget-object p1, p1, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, La/t;->m(Ljava/lang/String;)La/q;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    instance-of p1, p0, La/s;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, La/q;->i()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :catch_0
    :cond_1
    :goto_0
    return-object p2
.end method

.method public static d(La/t;Ljava/lang/String;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, La/t;->m(Ljava/lang/String;)La/q;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    instance-of p1, p0, La/s;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, La/q;->b()Z

    .line 13
    .line 14
    .line 15
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_1

    .line 17
    :catch_0
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 18
    :goto_1
    return p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ""

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "[0-9]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u4e91\u7aef\u5bf9\u624b\u6e38\u6807\u65e0\u6548"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/opponents?limit=20"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "&cursor="

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(La/t;Ljava/lang/String;)La/t;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, La/t;->m(Ljava/lang/String;)La/q;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    instance-of p1, p0, La/t;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, La/q;->f()La/t;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, La/t;

    .line 17
    .line 18
    invoke-direct {p0}, La/t;-><init>()V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-object p0
.end method

.method public static k(Ljava/lang/String;)[B
    .locals 12

    .line 1
    const-string v0, "\u5b58\u6863\u5bc6\u94a5\u7f16\u7801\u65e0\u6548"

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x100

    if-gt v1, v2, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2d

    const/16 v2, 0x2b

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x5f

    const/16 v4, 0x2f

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    rem-int/2addr v5, v6

    const/4 v7, 0x1

    if-eq v5, v7, :cond_c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    const/16 p0, 0x3d

    if-lez v5, :cond_0

    if-ge v5, v6, :cond_0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v6, 0x0

    move v8, v6

    move v9, v8

    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-ge v6, v10, :cond_b

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    if-ne v10, p0, :cond_1

    goto :goto_5

    :cond_1
    const/16 v11, 0x41

    if-lt v10, v11, :cond_2

    const/16 v11, 0x5a

    if-gt v10, v11, :cond_2

    add-int/lit8 v10, v10, -0x41

    goto :goto_4

    :cond_2
    const/16 v11, 0x61

    if-lt v10, v11, :cond_3

    const/16 v11, 0x7a

    if-gt v10, v11, :cond_3

    add-int/lit8 v10, v10, -0x61

    add-int/lit8 v10, v10, 0x1a

    goto :goto_4

    :cond_3
    const/16 v11, 0x30

    if-lt v10, v11, :cond_4

    const/16 v11, 0x39

    if-gt v10, v11, :cond_4

    add-int/lit8 v10, v10, -0x30

    add-int/lit8 v10, v10, 0x34

    goto :goto_4

    :cond_4
    if-eq v10, v2, :cond_8

    if-ne v10, v1, :cond_5

    goto :goto_3

    :cond_5
    if-eq v10, v4, :cond_7

    if-ne v10, v3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v10, -0x1

    goto :goto_4

    :cond_7
    :goto_2
    const/16 v10, 0x3f

    goto :goto_4

    :cond_8
    :goto_3
    const/16 v10, 0x3e

    :goto_4
    if-ltz v10, :cond_a

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v8, v10

    add-int/lit8 v9, v9, 0x6

    const/16 v10, 0x8

    if-lt v9, v10, :cond_9

    add-int/lit8 v9, v9, -0x8

    shr-int v10, v8, v9

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l(Ljava/lang/String;)[B
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sgscq/vpn/q1;->f()Ljava/util/Base64$Decoder;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/sgscq/vpn/q1;->n(Ljava/util/Base64$Decoder;Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-array p0, v0, [B

    return-object p0

    :cond_1
    :goto_0
    new-array p0, v0, [B

    return-object p0
.end method

.method public static m(La/t;)D
    .locals 2

    .line 1
    const-string v0, "fighting"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, v0}, La/t;->m(Ljava/lang/String;)La/q;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    instance-of v0, p0, La/s;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, La/q;->c()D

    .line 15
    .line 16
    .line 17
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_1

    .line 19
    :catch_0
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    :goto_1
    return-wide v0
.end method

.method public static o(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "unsupported_schema_version"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "\u4e91\u5b58\u6863\u534f\u8bae\u7248\u672c\u4e0d\u517c\u5bb9\uff0c\u8bf7\u66f4\u65b0\u4e91\u670d\u52a1\u6216\u5ba2\u6237\u7aef"

    return-object p0

    :cond_0
    const-string v0, "cloud_owner_mismatch"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "cloud_owner_token_mismatch"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "invalid_cloud_owner_token"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_6

    :cond_1
    const-string v0, "save_too_large"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "compressed_save_too_large"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string v0, "save_structure_too_large"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "save_structure_too_deep"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "save_string_too_large"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "invalid_save_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_4

    :cond_3
    const-string v0, "idempotency_key_required"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "\u4e91\u5b58\u6863\u8bf7\u6c42\u7f3a\u5c11\u5e42\u7b49\u6807\u8bc6\uff0c\u8bf7\u91cd\u8bd5"

    return-object p0

    :cond_4
    const-string v0, "transfer_cooldown"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "\u4e0a\u4f20\u6216\u4e0b\u8f7d\u4ecd\u5728\u51b7\u5374\u4e2d"

    return-object p0

    :cond_5
    const-string v0, "revision_conflict"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "\u4e91\u7aef\u7248\u672c\u5df2\u66f4\u65b0"

    return-object p0

    :cond_6
    const-string v0, "cloud_slot_already_bound"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "\u8be5\u8d26\u53f7\u5df2\u7ecf\u7ed1\u5b9a\u4e91\u7aef\u89d2\u8272"

    return-object p0

    :cond_7
    const-string v0, "cloud_character_required"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "cloud_slot_not_found"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_3

    :cond_8
    const-string v0, "cloud_character_mismatch"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "\u4e91\u89d2\u8272\u4e0e\u672c\u5730\u89d2\u8272\u4e0d\u4e00\u81f4"

    return-object p0

    :cond_9
    const-string v0, "cloud_character_must_be_empty"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "\u672c\u5730\u5b58\u6863\u4ecd\u5e26\u65e7\u4e91\u89d2\u8272\u6807\u8bc6\uff0c\u8bf7\u5237\u65b0\u540e\u91cd\u8bd5"

    return-object p0

    :cond_a
    const-string v0, "opponent_sync_in_progress"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "\u5176\u4ed6\u73a9\u5bb6\u9635\u5bb9\u6b63\u5728\u540c\u6b65\uff0c\u8bf7\u7b49\u5f85\u5f53\u524d\u540c\u6b65\u5b8c\u6210"

    return-object p0

    :cond_b
    const-string v0, "opponent_catalog_changed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "\u4e91\u73a9\u5bb6\u76ee\u5f55\u6301\u7eed\u66f4\u65b0\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    return-object p0

    :cond_c
    const-string v0, "chat_rate_limited"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p0, "\u6bcf 10 \u79d2\u6700\u591a\u53d1\u9001\u4e00\u6761\u6d88\u606f"

    return-object p0

    :cond_d
    const-string v0, "export_cooldown"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, "\u5b58\u6863\u5bfc\u51fa\u4ecd\u5728\u51b7\u5374\u4e2d"

    return-object p0

    :cond_e
    const-string v0, "chat_muted"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "\u5f53\u524d\u8d26\u53f7\u5df2\u88ab\u7981\u8a00"

    return-object p0

    :cond_f
    const-string v0, "invalid_chat_message"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p0, "\u804a\u5929\u5185\u5bb9\u4e3a\u7a7a\u6216\u8fc7\u957f"

    return-object p0

    :cond_10
    const-string v0, "session_replaced"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "\u5e10\u53f7\u5df2\u5728\u5176\u4ed6\u8bbe\u5907\u767b\u5f55\uff0c\u5f53\u524d\u767b\u5f55\u5df2\u4e0b\u7ebf"

    return-object p0

    :cond_11
    const-string v0, "cloud_role_hidden"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "\u516c\u5f00\u4e91\u89d2\u8272\u5df2\u88ab\u5c4f\u853d\uff0c\u767b\u5f55\u548c\u4e2a\u4eba\u4e91\u5b58\u6863\u4ecd\u53ef\u4f7f\u7528"

    return-object p0

    :cond_12
    const-string v0, "account_blocked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p0, "\u5f53\u524d\u7231\u53d1\u7535\u8d26\u53f7\u5df2\u88ab\u5c01\u7981"

    return-object p0

    :cond_13
    const-string v0, "client_update_required"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p0, "\u5f53\u524d\u5ba2\u6237\u7aef\u7248\u672c\u5df2\u505c\u7528\uff0c\u8bf7\u66f4\u65b0\u540e\u7ee7\u7eed\u4f7f\u7528\u4e91\u529f\u80fd"

    return-object p0

    :cond_14
    const-string v0, "invalid_refresh_token"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string p0, "\u4e91\u4f1a\u8bdd\u5df2\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\u7231\u53d1\u7535"

    return-object p0

    :cond_15
    const-string v0, "invalid_environment"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "cloud_environment_mismatch"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_2

    :cond_16
    const-string v0, "guild_membership_required"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string p0, "\u672a\u52a0\u5165\u516c\u4f1a"

    return-object p0

    :cond_17
    const-string v0, "invalid_guild_goods"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p0, "\u516c\u4f1a\u5546\u54c1\u4e0d\u5b58\u5728"

    return-object p0

    :cond_18
    const-string v0, "guild_goods_already_exchanged_today"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p0, "\u8be5\u5546\u54c1\u4eca\u65e5\u5df2\u5151\u6362"

    return-object p0

    :cond_19
    const-string v0, "guild_contribution_insufficient"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p0, "\u516c\u4f1a\u8d21\u732e\u4e0d\u8db3"

    return-object p0

    :cond_1a
    const/16 v0, 0x199

    if-ne p1, v0, :cond_1b

    const-string p0, "\u4e91\u670d\u52a1\u72b6\u6001\u5df2\u53d8\u5316\uff0c\u8bf7\u5237\u65b0\u540e\u91cd\u8bd5"

    return-object p0

    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u4e91\u670d\u52a1\u8bf7\u6c42\u5931\u8d25\uff08HTTP "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_0

    :cond_1c
    const-string p1, ", "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1d
    :goto_0
    const-string p0, ""

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\uff09"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    :goto_2
    const-string p0, "\u4e91\u670d\u52a1\u7248\u672c\u73af\u5883\u4e0d\u5339\u914d"

    return-object p0

    :cond_1f
    :goto_3
    const-string p0, "\u5f53\u524d\u8d26\u53f7\u6ca1\u6709\u4e91\u7aef\u89d2\u8272"

    return-object p0

    :cond_20
    :goto_4
    const-string p0, "\u4e91\u5b58\u6863\u7ed3\u6784\u8fc7\u5927\uff0c\u670d\u52a1\u7aef\u62d2\u7edd\u63a5\u6536\uff08\u8bf7\u53cd\u9988\u7ed9\u4f5c\u8005\uff09"

    return-object p0

    :cond_21
    :goto_5
    const-string p0, "\u4e91\u5b58\u6863\u8fc7\u5927\uff0c\u670d\u52a1\u7aef\u62d2\u7edd\u63a5\u6536\uff08\u8bf7\u53cd\u9988\u7ed9\u4f5c\u8005\uff09"

    return-object p0

    :cond_22
    :goto_6
    const-string p0, "\u4e91\u5b58\u6863\u8d26\u53f7\u5f52\u5c5e\u6821\u9a8c\u5931\u8d25"

    return-object p0
.end method

.method public static p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)Lcom/sgscq/vpn/cloud/t;
    .locals 10

    .line 1
    move-object v1, p0

    const-string v0, "GET"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HEAD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DELETE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Idempotency-Key"

    move-object v7, p5

    invoke-interface {p5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move-object v7, p5

    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v8, v0

    new-instance v9, Lcom/sgscq/vpn/cloud/c;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p6

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/sgscq/vpn/cloud/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    invoke-static {v9}, Lcom/sgscq/vpn/p5;->O(Lq/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sgscq/vpn/cloud/t;

    return-object v0
.end method

.method public static t(La/t;Ljava/lang/String;I)I
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, La/t;->m(Ljava/lang/String;)La/q;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    instance-of p1, p0, La/s;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, La/q;->d()I

    .line 13
    .line 14
    .line 15
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :catch_0
    :cond_1
    :goto_0
    return p2
.end method

.method public static u(La/t;Ljava/lang/String;J)J
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, La/t;->m(Ljava/lang/String;)La/q;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    instance-of p1, p0, La/s;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, La/q;->h()J

    .line 13
    .line 14
    .line 15
    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :catch_0
    :cond_1
    :goto_0
    return-wide p2
.end method

.method public static v(La/t;Ljava/lang/String;)Ljava/util/List;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, La/t;->m(Ljava/lang/String;)La/q;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_4

    .line 6
    .line 7
    instance-of p1, p0, La/p;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, La/q;->e()La/p;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, La/p;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, La/q;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    instance-of v1, v0, La/t;

    .line 41
    .line 42
    const-string v2, "\u4e91\u7aef\u5bf9\u624b\u6761\u76ee\u683c\u5f0f\u9519\u8bef"

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    sget-object v1, Lcom/sgscq/vpn/cloud/z;->c:La/o;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    const-class v3, Ljava/util/Map;

    .line 52
    .line 53
    invoke-static {v3}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    new-instance v5, Ld/i;

    .line 58
    .line 59
    invoke-direct {v5, v0}, Ld/i;-><init>(La/q;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v5, v4}, La/o;->b(Lh/a;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v3}, Lcom/sgscq/vpn/p5;->A1(Ljava/lang/Class;)Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Ljava/util/Map;

    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 79
    .line 80
    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 92
    .line 93
    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p0

    .line 103
    :cond_3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0

    .line 108
    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0
.end method

.method public static w(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "cloud_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static x(Ljava/lang/String;)La/t;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "{}"

    .line 4
    .line 5
    :cond_0
    invoke-static {p0}, La/w;->r(Ljava/lang/String;)La/q;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    instance-of v0, p0, La/t;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, La/q;->f()La/t;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "JSON \u5bf9\u8c61\u683c\u5f0f\u9519\u8bef"

    .line 21
    .line 22
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public static y(La/t;)Lcom/sgscq/vpn/cloud/h;
    .locals 13

    .line 1
    new-instance v10, Lcom/sgscq/vpn/cloud/h;

    const-string v0, "id"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "user_id"

    const-string v5, "0"

    invoke-static {p0, v0, v5}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "channel"

    const/4 v6, 0x1

    invoke-static {p0, v0, v6}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    move-result v6

    const-string v0, "vip_level"

    const/4 v7, 0x0

    invoke-static {p0, v0, v7}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    move-result v7

    const-string v0, "nickname"

    const-string v8, "\u73a9\u5bb6"

    invoke-static {p0, v0, v8}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "message"

    const-string v9, ""

    invoke-static {p0, v0, v9}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "time"

    invoke-static {p0, v0, v1, v2}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    move-result-wide v11

    move-object v0, v10

    move-wide v1, v3

    move-object v3, v5

    move v4, v6

    move v5, v7

    move-object v6, v8

    move-object v7, v9

    move-wide v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/sgscq/vpn/cloud/h;-><init>(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;J)V

    return-object v10
.end method

.method public static z(Ljava/lang/String;I)Lcom/sgscq/vpn/cloud/a0;
    .locals 11

    .line 1
    const-string v0, "cloud_http_"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v2, "error"

    .line 9
    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {p0, v2, v3}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    const-string v2, "retry_after"

    .line 27
    .line 28
    invoke-static {p0, v2, v1}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const-wide/16 v3, 0x0

    .line 33
    .line 34
    if-gtz v2, :cond_0

    .line 35
    .line 36
    const-string v2, "retry_after_ms"

    .line 37
    .line 38
    invoke-static {p0, v2, v3, v4}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    const-wide/16 v7, 0x3e7

    .line 43
    .line 44
    add-long/2addr v5, v7

    .line 45
    const-wide/16 v7, 0x3e8

    .line 46
    .line 47
    div-long/2addr v5, v7

    .line 48
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    const-wide/32 v7, 0x7fffffff

    .line 53
    .line 54
    .line 55
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 56
    .line 57
    .line 58
    move-result-wide v5

    .line 59
    long-to-int v2, v5

    .line 60
    :cond_0
    move v6, v2

    .line 61
    new-instance v2, Lcom/sgscq/vpn/cloud/a0;

    .line 62
    .line 63
    invoke-static {v9, p1}, Lcom/sgscq/vpn/cloud/z;->o(Ljava/lang/String;I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    const-string v5, "current_generation"

    .line 68
    .line 69
    invoke-static {p0, v5, v3, v4}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    .line 70
    .line 71
    .line 72
    move-result-wide v7

    .line 73
    move-object v4, v2

    .line 74
    move v5, p1

    .line 75
    invoke-direct/range {v4 .. v10}, Lcom/sgscq/vpn/cloud/a0;-><init>(IIJLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    return-object v2

    .line 79
    :catch_0
    new-instance p0, Lcom/sgscq/vpn/cloud/a0;

    .line 80
    .line 81
    invoke-static {v0, p1}, La/b0;->a(Ljava/lang/String;I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v3, "\u4e91\u670d\u52a1\u8bf7\u6c42\u5931\u8d25\uff08HTTP "

    .line 88
    .line 89
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v3, "\uff09"

    .line 96
    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/sgscq/vpn/cloud/a0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-object p0
.end method


# virtual methods
.method public final O(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 9

    .line 1
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x14

    .line 12
    .line 13
    if-gt v0, v1, :cond_4

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/sgscq/vpn/cloud/d;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    iget-object v2, v1, Lcom/sgscq/vpn/cloud/d;->a:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_0

    .line 45
    .line 46
    iget-object v3, v1, Lcom/sgscq/vpn/cloud/d;->b:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const-string v4, "kind"

    .line 56
    .line 57
    const-string v5, "object_id"

    .line 58
    .line 59
    invoke-static {v4, v2, v5, v3}, Lc/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iget v1, v1, Lcom/sgscq/vpn/cloud/d;->c:I

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v3, "quantity"

    .line 70
    .line 71
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    if-nez p3, :cond_3

    .line 83
    .line 84
    new-instance p3, Ljava/util/LinkedHashMap;

    .line 85
    .line 86
    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v1, "events"

    .line 90
    .line 91
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    sget-object v0, Lcom/sgscq/vpn/cloud/z;->c:La/o;

    .line 95
    .line 96
    invoke-virtual {v0, p3}, La/o;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    const-string v0, "Idempotency-Key"

    .line 101
    .line 102
    invoke-static {v0, p1}, Lc/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    const-string v2, "POST"

    .line 107
    .line 108
    const-string v3, "/chat/acquisitions"

    .line 109
    .line 110
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 111
    .line 112
    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    const-string v4, "application/json"

    .line 117
    .line 118
    const-string v5, ""

    .line 119
    .line 120
    move-object v1, p0

    .line 121
    move-object v6, p2

    .line 122
    invoke-virtual/range {v1 .. v8}, Lcom/sgscq/vpn/cloud/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)Lcom/sgscq/vpn/cloud/t;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const-string p2, "accepted"

    .line 135
    .line 136
    const/4 p3, 0x0

    .line 137
    invoke-static {p1, p2, p3}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    return p1

    .line 142
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 143
    .line 144
    const-string p2, "\u7a00\u6709\u5956\u52b1\u4e8b\u4ef6\u4e3a\u7a7a"

    .line 145
    .line 146
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1

    .line 150
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 151
    .line 152
    const-string p2, "\u7a00\u6709\u5956\u52b1\u4e8b\u4ef6\u6570\u91cf\u65e0\u6548"

    .line 153
    .line 154
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p1
.end method

.method public final P(JI)Ljava/lang/String;
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_4

    if-lez p3, :cond_4

    const/16 v0, 0x1000

    if-gt p3, v0, :cond_4

    iget-object v0, p0, Lcom/sgscq/vpn/cloud/z;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-array v0, p3, [B

    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 p1, 0x0

    :goto_1
    if-ge p1, p3, :cond_2

    sub-int p2, p3, p1

    invoke-virtual {v1, v0, p1, p2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p2

    if-ltz p2, :cond_1

    add-int/2addr p1, p2

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\u5b89\u88c5\u5305\u533a\u95f4\u8d8a\u754c"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x2

    invoke-static {v0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\u65e0\u6cd5\u5b9a\u4f4d\u5b89\u88c5\u5305\u6587\u4ef6"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u5b8c\u6574\u6027\u62bd\u67e5\u53c2\u6570\u65e0\u6548"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final Q(Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;Ljava/lang/String;)Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;
    .locals 4

    .line 1
    sget-object v0, Lcom/sgscq/vpn/cloud/z;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/sgscq/vpn/cloud/z;->b:Lm/e;

    .line 5
    .line 6
    invoke-virtual {v1}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1, p2}, Lcom/sgscq/vpn/cloud/z;->W(Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v1}, Lcom/sgscq/vpn/cloud/z;->X(Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-static {p1, v1}, Lcom/sgscq/vpn/cloud/z;->X(Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->isLoggedIn()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    iget-object v2, v1, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->refreshToken:Ljava/lang/String;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->refreshToken:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    :cond_0
    if-eqz v3, :cond_1

    .line 44
    .line 45
    monitor-exit v0

    .line 46
    return-object v1

    .line 47
    :cond_1
    invoke-virtual {p0, v1, p2}, Lcom/sgscq/vpn/cloud/z;->R(Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;Ljava/lang/String;)Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    monitor-exit v0

    .line 52
    return-object p1

    .line 53
    :cond_2
    new-instance p1, Lcom/sgscq/vpn/cloud/a0;

    .line 54
    .line 55
    const-string p2, "cloud_binding_changed"

    .line 56
    .line 57
    const-string v1, "\u4e91\u8d26\u53f7\u5df2\u5207\u6362\uff0c\u5df2\u53d6\u6d88\u65e7\u89d2\u8272\u6d88\u606f\u540c\u6b65"

    .line 58
    .line 59
    const/16 v2, 0x199

    .line 60
    .line 61
    invoke-direct {p1, v2, v3, p2, v1}, Lcom/sgscq/vpn/cloud/a0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p1
.end method

.method public final R(Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;Ljava/lang/String;)Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;
    .locals 16

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    invoke-static/range {p1 .. p2}, Lcom/sgscq/vpn/cloud/z;->W(Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, v1, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->refreshToken:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v2, 0x191

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v0, :cond_6

    .line 16
    .line 17
    iget-wide v4, v1, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->refreshExpiresAt:J

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v6

    .line 23
    cmp-long v0, v4, v6

    .line 24
    .line 25
    if-lez v0, :cond_6

    .line 26
    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v4, v1, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->refreshToken:Ljava/lang/String;

    .line 33
    .line 34
    const-string v5, "refresh_token"

    .line 35
    .line 36
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-object/from16 v4, p0

    .line 40
    .line 41
    iget-object v6, v4, Lcom/sgscq/vpn/cloud/z;->b:Lm/e;

    .line 42
    .line 43
    invoke-virtual {v6}, Lm/e;->d()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    const-string v8, "device_id"

    .line 48
    .line 49
    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :try_start_0
    const-string v9, "POST"

    .line 53
    .line 54
    const-string v10, "/auth/refresh"

    .line 55
    .line 56
    const-string v11, ""

    .line 57
    .line 58
    sget-object v7, Lcom/sgscq/vpn/cloud/z;->c:La/o;

    .line 59
    .line 60
    invoke-virtual {v7, v0}, La/o;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 65
    .line 66
    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 67
    .line 68
    .line 69
    move-result-object v15

    .line 70
    const-string v12, "application/json"

    .line 71
    .line 72
    const-string v13, ""

    .line 73
    .line 74
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 75
    .line 76
    .line 77
    move-result-object v14

    .line 78
    invoke-static/range {v9 .. v15}, Lcom/sgscq/vpn/cloud/z;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)Lcom/sgscq/vpn/cloud/t;

    .line 79
    .line 80
    .line 81
    move-result-object v0
    :try_end_0
    .catch Lcom/sgscq/vpn/cloud/a0; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v2, "environment"

    .line 91
    .line 92
    const-string v7, ""

    .line 93
    .line 94
    invoke-static {v0, v2, v7}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    const-string v8, "release"

    .line 99
    .line 100
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    const/16 v9, 0x199

    .line 105
    .line 106
    if-eqz v8, :cond_4

    .line 107
    .line 108
    const-string v8, "access_token"

    .line 109
    .line 110
    invoke-static {v0, v8, v7}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    const-string v10, "access_expires_at"

    .line 115
    .line 116
    const-wide/16 v11, 0x0

    .line 117
    .line 118
    invoke-static {v0, v10, v11, v12}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    .line 119
    .line 120
    .line 121
    move-result-wide v13

    .line 122
    invoke-static {v0, v5, v7}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    const-string v7, "refresh_expires_at"

    .line 127
    .line 128
    invoke-static {v0, v7, v11, v12}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    .line 129
    .line 130
    .line 131
    move-result-wide v10

    .line 132
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_3

    .line 137
    .line 138
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_3

    .line 143
    .line 144
    invoke-virtual {v6}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    move-object/from16 v7, p2

    .line 149
    .line 150
    invoke-static {v0, v7}, Lcom/sgscq/vpn/cloud/z;->W(Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v1, v0}, Lcom/sgscq/vpn/cloud/z;->X(Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;)Z

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    if-eqz v7, :cond_2

    .line 158
    .line 159
    invoke-static {v1, v0}, Lcom/sgscq/vpn/cloud/z;->X(Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;)Z

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    if-eqz v7, :cond_0

    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->isLoggedIn()Z

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    if-eqz v7, :cond_0

    .line 170
    .line 171
    iget-object v7, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->refreshToken:Ljava/lang/String;

    .line 172
    .line 173
    iget-object v9, v1, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->refreshToken:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    if-nez v7, :cond_0

    .line 180
    .line 181
    const/4 v3, 0x1

    .line 182
    :cond_0
    if-eqz v3, :cond_1

    .line 183
    .line 184
    return-object v0

    .line 185
    :cond_1
    iput-object v2, v1, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->environment:Ljava/lang/String;

    .line 186
    .line 187
    iput-object v8, v1, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->accessToken:Ljava/lang/String;

    .line 188
    .line 189
    iput-wide v13, v1, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->accessExpiresAt:J

    .line 190
    .line 191
    iput-object v5, v1, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->refreshToken:Ljava/lang/String;

    .line 192
    .line 193
    iput-wide v10, v1, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->refreshExpiresAt:J

    .line 194
    .line 195
    invoke-virtual {v6, v1}, Lm/e;->F(Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;)V

    .line 196
    .line 197
    .line 198
    return-object v1

    .line 199
    :cond_2
    new-instance v0, Lcom/sgscq/vpn/cloud/a0;

    .line 200
    .line 201
    const-string v1, "cloud_binding_changed"

    .line 202
    .line 203
    const-string v2, "\u4e91\u8d26\u53f7\u5df2\u5207\u6362\uff0c\u5df2\u53d6\u6d88\u65e7\u89d2\u8272\u6d88\u606f\u540c\u6b65"

    .line 204
    .line 205
    invoke-direct {v0, v9, v3, v1, v2}, Lcom/sgscq/vpn/cloud/a0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw v0

    .line 209
    :cond_3
    new-instance v0, Lcom/sgscq/vpn/cloud/a0;

    .line 210
    .line 211
    const-string v1, "\u4e91\u4f1a\u8bdd\u5237\u65b0\u54cd\u5e94\u4e0d\u5b8c\u6574"

    .line 212
    .line 213
    const/16 v2, 0x1f6

    .line 214
    .line 215
    const-string v5, "invalid_refresh_response"

    .line 216
    .line 217
    invoke-direct {v0, v2, v3, v5, v1}, Lcom/sgscq/vpn/cloud/a0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v0

    .line 221
    :cond_4
    invoke-virtual {v6}, Lm/e;->a()V

    .line 222
    .line 223
    .line 224
    new-instance v0, Lcom/sgscq/vpn/cloud/a0;

    .line 225
    .line 226
    const-string v1, "\u4e91\u670d\u52a1\u7248\u672c\u73af\u5883\u4e0d\u5339\u914d\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\u7231\u53d1\u7535"

    .line 227
    .line 228
    const-string v2, "cloud_environment_mismatch"

    .line 229
    .line 230
    invoke-direct {v0, v9, v3, v2, v1}, Lcom/sgscq/vpn/cloud/a0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw v0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    iget v3, v0, Lcom/sgscq/vpn/cloud/a0;->a:I

    .line 236
    .line 237
    if-ne v3, v2, :cond_5

    .line 238
    .line 239
    invoke-virtual/range {p0 .. p1}, Lcom/sgscq/vpn/cloud/z;->i(Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;)V

    .line 240
    .line 241
    .line 242
    :cond_5
    throw v0

    .line 243
    :cond_6
    move-object/from16 v4, p0

    .line 244
    .line 245
    invoke-virtual/range {p0 .. p1}, Lcom/sgscq/vpn/cloud/z;->i(Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;)V

    .line 246
    .line 247
    .line 248
    new-instance v0, Lcom/sgscq/vpn/cloud/a0;

    .line 249
    .line 250
    const-string v1, "cloud_session_expired"

    .line 251
    .line 252
    const-string v5, "\u4e91\u4f1a\u8bdd\u5df2\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\u7231\u53d1\u7535"

    .line 253
    .line 254
    invoke-direct {v0, v2, v3, v1, v5}, Lcom/sgscq/vpn/cloud/a0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw v0
.end method

.method public final S()Lcom/sgscq/vpn/cloud/e;
    .locals 7

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "POST"

    const-string v2, "/battle-runtime/integrity-challenge"

    invoke-virtual {p0, v1, v2, v0}, Lcom/sgscq/vpn/cloud/z;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    move-result-object v0

    const-string v1, "challenge_id"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Lcom/sgscq/vpn/cloud/e;

    const-string v3, "offset"

    const-wide/16 v4, -0x1

    invoke-static {v0, v3, v4, v5}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "length"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {v2, v1, v3, v4, v0}, Lcom/sgscq/vpn/cloud/e;-><init>(Ljava/lang/String;JI)V

    return-object v2
.end method

.method public final T()Lcom/sgscq/vpn/cloud/e;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "environment"

    .line 7
    .line 8
    const-string v2, "release"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "POST"

    .line 14
    .line 15
    const-string v2, "/battle-runtime/challenge"

    .line 16
    .line 17
    invoke-virtual {p0, v1, v2, v0}, Lcom/sgscq/vpn/cloud/z;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "challenge_id"

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-static {v0, v1, v2}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const-string v2, "nonce"

    .line 37
    .line 38
    const-string v3, ""

    .line 39
    .line 40
    invoke-static {v0, v2, v3}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "expires_at"

    .line 45
    .line 46
    const-wide/16 v4, 0x0

    .line 47
    .line 48
    invoke-static {v0, v3, v4, v5}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v6

    .line 52
    if-lez v1, :cond_0

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    cmp-long v0, v6, v4

    .line 61
    .line 62
    if-lez v0, :cond_0

    .line 63
    .line 64
    new-instance v0, Lcom/sgscq/vpn/cloud/e;

    .line 65
    .line 66
    invoke-direct {v0, v1, v2, v6, v7}, Lcom/sgscq/vpn/cloud/e;-><init>(ILjava/lang/String;J)V

    .line 67
    .line 68
    .line 69
    return-object v0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    const-string v1, "\u6218\u6597 challenge \u54cd\u5e94\u4e0d\u5b8c\u6574"

    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0
.end method

.method public final V(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/v;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "export"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, "\u5b58\u6863\u64cd\u4f5c\u65e0\u6548"

    .line 12
    .line 13
    const-string v3, "import"

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    :goto_0
    const-string v4, "POST"

    .line 31
    .line 32
    const-string v5, "/save-archive/key"

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_3
    :goto_1
    const-string v0, "operation"

    .line 54
    .line 55
    invoke-static {v0, p1}, Lc/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    sget-object v0, Lcom/sgscq/vpn/cloud/z;->c:La/o;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, La/o;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    const-string v7, "application/json"

    .line 72
    .line 73
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    move-object v3, p0

    .line 78
    invoke-virtual/range {v3 .. v8}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const-string v0, "schema_version"

    .line 91
    .line 92
    const/4 v1, 0x0

    .line 93
    invoke-static {p1, v0, v1}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    const-string v2, "kdf_version"

    .line 98
    .line 99
    invoke-static {p1, v2, v1}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    const-string v2, "key_material"

    .line 104
    .line 105
    const-string v3, ""

    .line 106
    .line 107
    invoke-static {p1, v2, v3}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-static {v2}, Lcom/sgscq/vpn/cloud/z;->k(Ljava/lang/String;)[B

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    const-string v2, "account_tag"

    .line 116
    .line 117
    invoke-static {p1, v2, v3}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-static {v2}, Lcom/sgscq/vpn/cloud/z;->k(Ljava/lang/String;)[B

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    const-string v2, "environment"

    .line 126
    .line 127
    invoke-static {p1, v2, v3}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    const/4 v2, 0x1

    .line 132
    if-ne v0, v2, :cond_5

    .line 133
    .line 134
    if-ne v1, v2, :cond_5

    .line 135
    .line 136
    array-length v0, v5

    .line 137
    const/16 v1, 0x20

    .line 138
    .line 139
    if-ne v0, v1, :cond_5

    .line 140
    .line 141
    array-length v0, v6

    .line 142
    const/16 v1, 0x10

    .line 143
    .line 144
    if-ne v0, v1, :cond_5

    .line 145
    .line 146
    const-string v0, "debug"

    .line 147
    .line 148
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-nez v0, :cond_4

    .line 153
    .line 154
    const-string v0, "release"

    .line 155
    .line 156
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_5

    .line 161
    .line 162
    :cond_4
    new-instance v0, Lcom/sgscq/vpn/cloud/v;

    .line 163
    .line 164
    const-string v1, "cooldown_until_ms"

    .line 165
    .line 166
    const-wide/16 v2, 0x0

    .line 167
    .line 168
    invoke-static {p1, v1, v2, v3}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    .line 169
    .line 170
    .line 171
    move-result-wide v8

    .line 172
    move-object v4, v0

    .line 173
    invoke-direct/range {v4 .. v9}, Lcom/sgscq/vpn/cloud/v;-><init>([B[BLjava/lang/String;J)V

    .line 174
    .line 175
    .line 176
    return-object v0

    .line 177
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 178
    .line 179
    const-string v0, "\u5b58\u6863\u5bc6\u94a5\u54cd\u5e94\u4e0d\u5b8c\u6574"

    .line 180
    .line 181
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw p1
.end method

.method public final Y(Ljava/lang/String;ILjava/lang/String;)Lcom/sgscq/vpn/cloud/h;
    .locals 7

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lc/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    const-string v1, "nickname"

    .line 12
    .line 13
    invoke-interface {p1, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const/4 p3, 0x2

    .line 17
    if-ne p2, p3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p3, 0x1

    .line 21
    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const-string p3, "channel"

    .line 26
    .line 27
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    sget-object p2, Lcom/sgscq/vpn/cloud/z;->c:La/o;

    .line 31
    .line 32
    invoke-virtual {p2, p1}, La/o;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    const-string p3, "Idempotency-Key"

    .line 50
    .line 51
    invoke-interface {v6, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    const-string v2, "POST"

    .line 55
    .line 56
    const-string v3, "/chat/messages"

    .line 57
    .line 58
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const-string v5, "application/json"

    .line 65
    .line 66
    move-object v1, p0

    .line 67
    invoke-virtual/range {v1 .. v6}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p1, v0}, Lcom/sgscq/vpn/cloud/z;->g(La/t;Ljava/lang/String;)La/t;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/z;->y(La/t;)Lcom/sgscq/vpn/cloud/h;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    return-object p1
.end method

.method public final Z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/sgscq/vpn/cloud/z;->c:La/o;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v0, p2, v1}, La/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    const-string v0, "POST"

    invoke-virtual {p0, v0, p1, p2}, Lcom/sgscq/vpn/cloud/z;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    move-result-object p1

    const-string p2, "status"

    const-string v0, "success"

    invoke-static {p1, p2, v0}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;
    .locals 8

    .line 1
    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v6, p5

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/sgscq/vpn/cloud/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)Lcom/sgscq/vpn/cloud/t;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)Lcom/sgscq/vpn/cloud/t;
    .locals 13

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v2, p5

    .line 3
    .line 4
    iget-object v0, v1, Lcom/sgscq/vpn/cloud/z;->b:Lm/e;

    .line 5
    .line 6
    invoke-virtual {v0}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->isLoggedIn()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/16 v4, 0x191

    .line 15
    .line 16
    if-eqz v3, :cond_4

    .line 17
    .line 18
    invoke-static {v0, v2}, Lcom/sgscq/vpn/cloud/z;->W(Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v3, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->accessToken:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    iget-wide v5, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->accessExpiresAt:J

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v7

    .line 35
    const-wide/16 v9, 0x1388

    .line 36
    .line 37
    add-long/2addr v7, v9

    .line 38
    cmp-long v3, v5, v7

    .line 39
    .line 40
    if-gtz v3, :cond_1

    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/sgscq/vpn/cloud/z;->Q(Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;Ljava/lang/String;)Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :cond_1
    move-object v3, v0

    .line 47
    new-instance v12, Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    move-object/from16 v0, p6

    .line 50
    .line 51
    invoke-direct {v12, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 52
    .line 53
    .line 54
    :try_start_0
    iget-object v7, v3, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->accessToken:Ljava/lang/String;

    .line 55
    .line 56
    move-object v5, p1

    .line 57
    move-object v6, p2

    .line 58
    move-object/from16 v8, p3

    .line 59
    .line 60
    move-object/from16 v9, p4

    .line 61
    .line 62
    move-object v10, v12

    .line 63
    move-object/from16 v11, p7

    .line 64
    .line 65
    invoke-static/range {v5 .. v11}, Lcom/sgscq/vpn/cloud/z;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)Lcom/sgscq/vpn/cloud/t;

    .line 66
    .line 67
    .line 68
    move-result-object v0
    :try_end_0
    .catch Lcom/sgscq/vpn/cloud/a0; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    iget v5, v0, Lcom/sgscq/vpn/cloud/a0;->a:I

    .line 72
    .line 73
    if-ne v5, v4, :cond_3

    .line 74
    .line 75
    const-string v4, "session_replaced"

    .line 76
    .line 77
    iget-object v5, v0, Lcom/sgscq/vpn/cloud/a0;->b:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    xor-int/lit8 v4, v4, 0x1

    .line 84
    .line 85
    if-eqz v4, :cond_2

    .line 86
    .line 87
    invoke-virtual {p0, v3, v2}, Lcom/sgscq/vpn/cloud/z;->Q(Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;Ljava/lang/String;)Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v7, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->accessToken:Ljava/lang/String;

    .line 92
    .line 93
    move-object v5, p1

    .line 94
    move-object v6, p2

    .line 95
    move-object/from16 v8, p3

    .line 96
    .line 97
    move-object/from16 v9, p4

    .line 98
    .line 99
    move-object v10, v12

    .line 100
    move-object/from16 v11, p7

    .line 101
    .line 102
    invoke-static/range {v5 .. v11}, Lcom/sgscq/vpn/cloud/z;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)Lcom/sgscq/vpn/cloud/t;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    return-object v0

    .line 107
    :cond_2
    invoke-virtual {p0, v3}, Lcom/sgscq/vpn/cloud/z;->i(Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;)V

    .line 108
    .line 109
    .line 110
    throw v0

    .line 111
    :cond_3
    throw v0

    .line 112
    :cond_4
    new-instance v0, Lcom/sgscq/vpn/cloud/a0;

    .line 113
    .line 114
    const-string v2, "afdian_login_required"

    .line 115
    .line 116
    const-string v3, "\u8bf7\u5148\u767b\u5f55\u7231\u53d1\u7535"

    .line 117
    .line 118
    const/4 v5, 0x0

    .line 119
    invoke-direct {v0, v4, v5, v2, v3}, Lcom/sgscq/vpn/cloud/a0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v0
.end method

.method public final b0(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;ZZLjava/lang/String;)Lcom/sgscq/vpn/cloud/x;
    .locals 9

    .line 1
    const-string v0, "Idempotency-Key"

    .line 2
    .line 3
    move-object v1, p4

    .line 4
    invoke-static {v0, p4}, Lc/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    .line 7
    move-result-object v7

    .line 8
    if-eqz p5, :cond_0

    .line 9
    .line 10
    const-string v0, "X-Force-Overwrite"

    .line 11
    .line 12
    const-string v1, "true"

    .line 13
    .line 14
    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :cond_0
    if-eqz p6, :cond_1

    .line 18
    .line 19
    const-string v0, "X-Conflict-Resolution"

    .line 20
    .line 21
    const-string v1, "use-local"

    .line 22
    .line 23
    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_1
    const-string v4, "application/octet-stream"

    .line 27
    .line 28
    const-string v5, "gzip"

    .line 29
    .line 30
    move-object v1, p0

    .line 31
    move-object v2, p1

    .line 32
    move-object v3, p2

    .line 33
    move-object/from16 v6, p7

    .line 34
    .line 35
    move-object v8, p3

    .line 36
    invoke-virtual/range {v1 .. v8}, Lcom/sgscq/vpn/cloud/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)Lcom/sgscq/vpn/cloud/t;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/z;->L(La/t;)Lcom/sgscq/vpn/cloud/x;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;
    .locals 6

    .line 1
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Idempotency-Key"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sgscq/vpn/cloud/z;->c:La/o;

    invoke-virtual {v0, p3}, La/o;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v4, "application/json"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/cloud/i;
    .locals 7

    .line 1
    const-string v1, "POST"

    .line 2
    .line 3
    const-string v2, "/identity/follower/check"

    .line 4
    .line 5
    const-string v6, "provider"

    .line 6
    .line 7
    const-string v0, "external_id"

    .line 8
    .line 9
    invoke-static {v6, p1, v0, p2}, Lc/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object p2, Lcom/sgscq/vpn/cloud/z;->c:La/o;

    .line 14
    .line 15
    invoke-virtual {p2, p1}, La/o;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "application/json"

    .line 26
    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    move-object v0, p0

    .line 32
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance p2, Lcom/sgscq/vpn/cloud/i;

    .line 45
    .line 46
    const-string v0, ""

    .line 47
    .line 48
    invoke-static {p1, v6, v0}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    const-string v0, "status"

    .line 52
    .line 53
    const-string v1, "unknown"

    .line 54
    .line 55
    invoke-static {p1, v0, v1}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v1, "eligible"

    .line 60
    .line 61
    invoke-static {p1, v1}, Lcom/sgscq/vpn/cloud/z;->d(La/t;Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const-string v2, "snapshot_at"

    .line 66
    .line 67
    const-wide/16 v3, 0x0

    .line 68
    .line 69
    invoke-static {p1, v2, v3, v4}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    .line 70
    .line 71
    .line 72
    const-string v2, "valid_until"

    .line 73
    .line 74
    invoke-static {p1, v2, v3, v4}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    .line 75
    .line 76
    .line 77
    invoke-direct {p2, v0, v1}, Lcom/sgscq/vpn/cloud/i;-><init>(Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    return-object p2
.end method

.method public final h(Ljava/util/List;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_0
    const-string v1, "mail_ids"

    .line 13
    .line 14
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    sget-object p1, Lcom/sgscq/vpn/cloud/z;->c:La/o;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, La/o;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-class v1, Ljava/util/Map;

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, La/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/util/Map;

    .line 30
    .line 31
    const-string v0, "POST"

    .line 32
    .line 33
    const-string v1, "/reward-mails/claims"

    .line 34
    .line 35
    invoke-virtual {p0, v0, v1, p1}, Lcom/sgscq/vpn/cloud/z;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final i(Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/z;->b:Lm/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {p1, v1}, Lcom/sgscq/vpn/cloud/z;->X(Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-object p1, p1, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->refreshToken:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->refreshToken:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lm/e;->a()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final j(J)Lcom/sgscq/vpn/cloud/s;
    .locals 8

    .line 1
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "Idempotency-Key"

    .line 15
    .line 16
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    const-string v1, "POST"

    .line 20
    .line 21
    const-string v2, "/opponents/sync-complete"

    .line 22
    .line 23
    const-wide/16 v6, 0x0

    .line 24
    .line 25
    cmp-long v0, p1, v6

    .line 26
    .line 27
    if-ltz v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v3, "generation"

    .line 35
    .line 36
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    sget-object p1, Lcom/sgscq/vpn/cloud/z;->c:La/o;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, La/o;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const-string v4, "application/json"

    .line 56
    .line 57
    move-object v0, p0

    .line 58
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string p2, "confirmed_generation"

    .line 71
    .line 72
    const-wide/16 v0, -0x1

    .line 73
    .line 74
    invoke-static {p1, p2, v0, v1}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    .line 75
    .line 76
    .line 77
    move-result-wide p1

    .line 78
    cmp-long v0, p1, v6

    .line 79
    .line 80
    if-ltz v0, :cond_0

    .line 81
    .line 82
    new-instance v0, Lcom/sgscq/vpn/cloud/s;

    .line 83
    .line 84
    invoke-direct {v0, p1, p2}, Lcom/sgscq/vpn/cloud/s;-><init>(J)V

    .line 85
    .line 86
    .line 87
    return-object v0

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 89
    .line 90
    const-string p2, "\u4e91\u7aef\u5bf9\u624b\u786e\u8ba4\u54cd\u5e94\u4e0d\u5b8c\u6574"

    .line 91
    .line 92
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 97
    .line 98
    const-string p2, "\u4e91\u7aef\u5bf9\u624b\u76ee\u5f55\u4ee3\u6b21\u65e0\u6548"

    .line 99
    .line 100
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1
.end method

.method public final n(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 8

    .line 1
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "Idempotency-Key"

    .line 15
    .line 16
    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "X-Cloud-Save-Schema"

    .line 25
    .line 26
    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-interface {v6, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 30
    .line 31
    .line 32
    const-string v1, "GET"

    .line 33
    .line 34
    const-string v2, "/cloud-slot/save"

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    const-string v3, "application/octet-stream"

    .line 38
    .line 39
    const-string v4, ""

    .line 40
    .line 41
    move-object v0, p0

    .line 42
    move-object v5, p1

    .line 43
    invoke-virtual/range {v0 .. v7}, Lcom/sgscq/vpn/cloud/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)Lcom/sgscq/vpn/cloud/t;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object p1, p1, Lcom/sgscq/vpn/cloud/t;->a:[B

    .line 48
    .line 49
    return-object p1
.end method

.method public final q(JLjava/lang/String;J)Lcom/sgscq/vpn/d3;
    .locals 6

    .line 1
    const-string v1, "GET"

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, p1, v2

    .line 6
    .line 7
    if-ltz v0, :cond_4

    .line 8
    .line 9
    cmp-long v0, p4, p1

    .line 10
    .line 11
    if-ltz v0, :cond_4

    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    move-object p3, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    const-string v2, "[0-9]+"

    .line 30
    .line 31
    invoke-virtual {p3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string p2, "\u4e91\u7aef\u5bf9\u624b\u6e38\u6807\u65e0\u6548"

    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v3, "/opponents/changes?since_generation="

    .line 49
    .line 50
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, "&limit=20&target_generation="

    .line 57
    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    const-string p1, "&cursor="

    .line 72
    .line 73
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const/4 v3, 0x0

    .line 85
    const-string v4, "application/json"

    .line 86
    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    move-object v0, p0

    .line 92
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/z;->H(Ljava/lang/String;)Lcom/sgscq/vpn/d3;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    return-object p1

    .line 105
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 106
    .line 107
    const-string p2, "\u4e91\u7aef\u5bf9\u624b\u76ee\u5f55\u4ee3\u6b21\u65e0\u6548"

    .line 108
    .line 109
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p1
.end method

.method public final r(Ljava/lang/String;J)Lcom/sgscq/vpn/cloud/g;
    .locals 6

    .line 1
    const-string v1, "GET"

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, p2, v2

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/z;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, "&target_generation="

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x0

    .line 34
    const-string v4, "application/json"

    .line 35
    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    move-object v0, p0

    .line 41
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/z;->I(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/g;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    const-string p2, "\u4e91\u7aef\u5bf9\u624b\u76ee\u5f55\u4ee3\u6b21\u65e0\u6548"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method

.method public final s(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/x;
    .locals 8

    .line 1
    const-string v1, "GET"

    .line 2
    .line 3
    const-string v2, "/cloud-slot"

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    const-string v3, "application/json"

    .line 7
    .line 8
    const-string v4, ""

    .line 9
    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    move-object v0, p0

    .line 15
    move-object v5, p1

    .line 16
    invoke-virtual/range {v0 .. v7}, Lcom/sgscq/vpn/cloud/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)Lcom/sgscq/vpn/cloud/t;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "slot"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, La/t;->m(Ljava/lang/String;)La/q;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    instance-of v0, p1, La/s;

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    instance-of v0, p1, La/t;

    .line 41
    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1}, La/q;->f()La/t;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/z;->L(La/t;)Lcom/sgscq/vpn/cloud/x;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 55
    :goto_1
    return-object p1
.end method
