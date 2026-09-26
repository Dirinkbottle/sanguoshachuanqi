.class public abstract Lcom/sgscq/vpn/handler/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:Ljava/util/LinkedHashMap;

.field public static final e:Ljava/util/LinkedHashMap;

.field public static final f:Ljava/util/LinkedHashMap;

.field public static g:Ljava/util/LinkedHashMap;

.field public static h:Ljava/util/LinkedHashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v0, "211002"

    const-string v1, "221002"

    const-string v2, ""

    const-string v3, "231007"

    const-string v4, "241005"

    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/handler/p0;->a:[Ljava/lang/String;

    const-string v0, "shenwuqi_chushou"

    const-string v1, "shenfangju_chushou"

    const-string v3, "shenzuoqi_chushou"

    const-string v4, "shenjinnang_chushou"

    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/handler/p0;->b:[Ljava/lang/String;

    const-string v0, "shenwuqi_qianghua"

    const-string v1, "shenfangju_qianghua"

    const-string v3, "shenzuoqi_qianghua"

    const-string v4, "shenjinnang_qianghua"

    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/handler/p0;->c:[Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sgscq/vpn/handler/p0;->d:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lcom/sgscq/vpn/handler/p0;->e:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lcom/sgscq/vpn/handler/p0;->f:Ljava/util/LinkedHashMap;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "shangshen_jinglian_up"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "zhongshen_jinglian_up"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "xiashen_jinglian_up"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "shangjin_jinglian_up"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "xiajin_jinglian_up"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "liejin_jinglian_up"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "zhongyin_jinglian_up"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "zhongjin_jinglian_up"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "xiayin_jinglian_up"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "tong_jinglian_up"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "shangyin_jinglian_up"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "111003"

    const-string v2, "311003"

    const-string v3, "3"

    const-string v4, "351003"

    const-string v5, "2"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/sgscq/vpn/handler/p0;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "111004"

    const-string v2, "311004"

    const-string v4, "351004"

    const-string v6, "4"

    invoke-static {v0, v2, v5, v4, v6}, Lcom/sgscq/vpn/handler/p0;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "351005"

    const-string v2, "111008"

    const-string v4, "311008"

    invoke-static {v2, v4, v3, v0, v6}, Lcom/sgscq/vpn/handler/p0;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "111012"

    const-string v2, "311012"

    const-string v4, "351006"

    const-string v7, "0"

    invoke-static {v0, v2, v3, v4, v7}, Lcom/sgscq/vpn/handler/p0;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "121004"

    const-string v2, "321004"

    const-string v4, "351013"

    const-string v7, "1"

    invoke-static {v0, v2, v5, v4, v7}, Lcom/sgscq/vpn/handler/p0;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "351015"

    const-string v2, "121010"

    const-string v4, "321010"

    invoke-static {v2, v4, v7, v0, v6}, Lcom/sgscq/vpn/handler/p0;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "351023"

    const-string v2, "131008"

    const-string v4, "331008"

    invoke-static {v2, v4, v3, v0, v6}, Lcom/sgscq/vpn/handler/p0;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "351024"

    const-string v2, "131009"

    const-string v4, "331009"

    invoke-static {v2, v4, v7, v0, v6}, Lcom/sgscq/vpn/handler/p0;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "351027"

    const-string v2, "141003"

    const-string v4, "341003"

    invoke-static {v2, v4, v5, v0, v6}, Lcom/sgscq/vpn/handler/p0;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "351033"

    const-string v2, "141012"

    const-string v4, "341012"

    invoke-static {v2, v4, v7, v0, v6}, Lcom/sgscq/vpn/handler/p0;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "311007"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "311009"

    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "311014"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "321006"

    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "321009"

    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "321013"

    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "321015"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "321016"

    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "321018"

    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "322009"

    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "351019"

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "351020"

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static A(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 9

    .line 1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "code"

    const-string v3, "result"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v5, "msg"

    const-string v7, "error_code"

    move-object v2, v0

    move-object v6, p0

    move-object v8, v0

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "ret"

    invoke-static {v1, v0, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static B(ILjava/util/Map;)V
    .locals 7

    .line 1
    if-gtz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x1

    .line 5
    const-string v1, "level"

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, "user_level"

    .line 12
    .line 13
    invoke-static {v2, v3, p1}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x0

    .line 22
    const-string v4, "user_exp"

    .line 23
    .line 24
    invoke-static {v2, v4, p1}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    const-string v6, "user_experience"

    .line 29
    .line 30
    invoke-static {v5, v6, p1}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v5, 0x0

    .line 39
    invoke-static {v5}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v5, v0, v2, p0}, Lcom/sgscq/vpn/w1;->m(III)Ll/c;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    iget v0, p0, Ll/c;->a:I

    .line 48
    .line 49
    invoke-static {v0, p1, v3, v0, v1}, Lc/a;->t(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget p0, p0, Ll/c;->b:I

    .line 53
    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {p1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    const-string v0, "experience"

    .line 69
    .line 70
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public static C(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "null"

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static D(ILjava/lang/String;Ljava/util/Map;)V
    .locals 4

    .line 1
    if-eqz p2, :cond_2

    if-gtz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v0

    int-to-long v0, v0

    int-to-long v2, p0

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    const p0, 0x7fffffff

    goto :goto_0

    :cond_1
    long-to-int p0, v0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method

.method public static E(ILjava/lang/String;Ljava/util/Map;)I
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return p0

    .line 4
    :cond_0
    invoke-static {p2, p1, p0}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public static F(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    const-string v0, "0"

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, p0}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/sgscq/vpn/w1;->i0()Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    sget-object v1, Lcom/sgscq/vpn/p5;->a:[Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const-string v2, "1"

    .line 55
    .line 56
    invoke-static {v2, v1}, Lcom/sgscq/vpn/w1;->p1(Ljava/lang/String;Ljava/util/Map;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    invoke-static {v0, p0}, Lcom/sgscq/vpn/p5;->a0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_2

    .line 67
    .line 68
    :goto_0
    const/4 p0, 0x1

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 71
    :goto_2
    return p0
.end method

.method public static G(Ljava/util/Map;)Z
    .locals 5

    .line 1
    const-string v0, "player_id"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "robot_"

    .line 10
    .line 11
    const-string v2, "ladder_npc_"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :cond_0
    return v3

    .line 29
    :cond_1
    const-string v0, "other_user_id"

    .line 30
    .line 31
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    :cond_2
    return v3

    .line 52
    :cond_3
    const-string v0, "player_type"

    .line 53
    .line 54
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "1"

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const/4 v1, 0x0

    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    return v1

    .line 68
    :cond_4
    const-string v0, "ladder_rank"

    .line 69
    .line 70
    invoke-static {v0, p0}, Lcom/sgscq/vpn/handler/p0;->C(Ljava/lang/String;Ljava/util/Map;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_6

    .line 75
    .line 76
    const-string v0, "rank"

    .line 77
    .line 78
    invoke-static {v0, p0}, Lcom/sgscq/vpn/handler/p0;->C(Ljava/lang/String;Ljava/util/Map;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_6

    .line 83
    .line 84
    const-string v0, "user_rank"

    .line 85
    .line 86
    invoke-static {v0, p0}, Lcom/sgscq/vpn/handler/p0;->C(Ljava/lang/String;Ljava/util/Map;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_6

    .line 91
    .line 92
    const-string v0, "ladderRank"

    .line 93
    .line 94
    invoke-static {v0, p0}, Lcom/sgscq/vpn/handler/p0;->C(Ljava/lang/String;Ljava/util/Map;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_6

    .line 99
    .line 100
    const-string v0, "server_rank"

    .line 101
    .line 102
    invoke-static {v0, p0}, Lcom/sgscq/vpn/handler/p0;->C(Ljava/lang/String;Ljava/util/Map;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_6

    .line 107
    .line 108
    const-string v0, "target_rank"

    .line 109
    .line 110
    invoke-static {v0, p0}, Lcom/sgscq/vpn/handler/p0;->C(Ljava/lang/String;Ljava/util/Map;)Z

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    if-eqz p0, :cond_5

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_5
    move v3, v1

    .line 118
    :cond_6
    :goto_0
    return v3
.end method

.method public static H(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sgscq/vpn/w1;->k1(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sgscq/vpn/handler/p0;->V(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sgscq/vpn/handler/p0;->f:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static I(I)I
    .locals 4

    .line 1
    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0x2710

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x4035808cea9f325cL    # 21.5021502150215

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    add-int/lit16 p0, p0, 0x1388

    return p0
.end method

.method public static J(III)Ljava/lang/String;
    .locals 2

    .line 1
    mul-int/lit8 p0, p0, 0x1f

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x7

    .line 4
    .line 5
    add-int/2addr p1, p0

    .line 6
    add-int/2addr p1, p2

    .line 7
    invoke-static {p1}, Lcom/sgscq/vpn/p5;->i1(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 p2, 0x0

    .line 12
    :goto_0
    const/16 v0, 0x7d0

    .line 13
    .line 14
    if-ge p2, v0, :cond_1

    .line 15
    .line 16
    add-int v0, p1, p2

    .line 17
    .line 18
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->i1(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/sgscq/vpn/handler/p0;->Q(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    move-object p0, v0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    :goto_1
    return-object p0
.end method

.method public static K(Ljava/util/Map;Z)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "level"

    .line 3
    .line 4
    invoke-static {v0, v1, p0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const-string v2, "user_level"

    .line 9
    .line 10
    invoke-static {v1, v2, p0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, p0}, Lcom/sgscq/vpn/w1;->y0(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-gtz v1, :cond_0

    .line 28
    .line 29
    const-string v1, "ladder_fight_user_exp"

    .line 30
    .line 31
    invoke-static {p0, v0, v1}, Lcom/sgscq/vpn/handler/h1;->b0(ILandroid/content/Context;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    :cond_0
    if-lez v1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/16 v1, 0xa

    .line 39
    .line 40
    :goto_0
    if-nez p1, :cond_2

    .line 41
    .line 42
    return v1

    .line 43
    :cond_2
    int-to-long p0, v1

    .line 44
    const-wide/16 v0, 0x2

    .line 45
    .line 46
    mul-long/2addr p0, v0

    .line 47
    const-wide/32 v0, 0x7fffffff

    .line 48
    .line 49
    .line 50
    cmp-long v0, p0, v0

    .line 51
    .line 52
    if-lez v0, :cond_3

    .line 53
    .line 54
    const p0, 0x7fffffff

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    long-to-int p0, p0

    .line 59
    :goto_1
    return p0
.end method

.method public static L()Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sgscq/vpn/w1;->V1()Lcom/sgscq/vpn/a7;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/sgscq/vpn/a7;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/sgscq/vpn/a7;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    return-object v0
.end method

.method public static M(Ljava/lang/String;Ljava/util/Map;)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_1
    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-wide v0
.end method

.method public static N(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/sgscq/vpn/battle/BattleUnit;
    .locals 8

    .line 1
    new-instance v7, Lcom/sgscq/vpn/handler/e;

    .line 2
    .line 3
    invoke-direct {v7, p2, p0, p1}, Lcom/sgscq/vpn/handler/e;-><init>(Ljava/lang/String;II)V

    .line 4
    .line 5
    .line 6
    iput-object p4, v7, Lcom/sgscq/vpn/handler/e;->d:Ljava/util/Map;

    .line 7
    .line 8
    iput-object p3, v7, Lcom/sgscq/vpn/handler/e;->g:Ljava/lang/String;

    .line 9
    .line 10
    const-wide v1, 0x4072c00000000000L    # 300.0

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 16
    .line 17
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 18
    .line 19
    move-object v0, v7

    .line 20
    invoke-virtual/range {v0 .. v6}, Lcom/sgscq/vpn/handler/e;->a(DDD)V

    .line 21
    .line 22
    .line 23
    if-eqz p5, :cond_0

    .line 24
    .line 25
    iput-object p5, v7, Lcom/sgscq/vpn/handler/e;->e:Ljava/util/Map;

    .line 26
    .line 27
    :cond_0
    invoke-static {v7}, Lcom/sgscq/vpn/handler/f;->a(Lcom/sgscq/vpn/handler/e;)Lcom/sgscq/vpn/battle/BattleUnit;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static O(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sgscq/vpn/w1;->T0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/handler/p0;->i0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static P(Ljava/util/Map;)V
    .locals 15

    .line 1
    const-string v0, "ladder_rank"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x270f

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    const-string v1, "ladder_best_rank"

    .line 19
    .line 20
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-interface {p0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-static {v2, v0, p0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-static {v2, v1, p0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v3, 0x1

    .line 42
    if-ne v1, v3, :cond_2

    .line 43
    .line 44
    if-le v2, v3, :cond_2

    .line 45
    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_2
    const-string v0, "ladderChallengeTimes"

    .line 54
    .line 55
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_3

    .line 60
    .line 61
    invoke-static {p0}, Lcom/sgscq/vpn/handler/p0;->w(Ljava/util/Map;)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :cond_3
    sget-boolean v1, Lcom/sgscq/vpn/c7;->i:Z

    .line 73
    .line 74
    const-string v2, "ladderChallengeRecoverAt"

    .line 75
    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v3, ""

    .line 84
    .line 85
    const-string v4, "ladderChallengeDay"

    .line 86
    .line 87
    invoke-interface {p0, v4, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-nez v5, :cond_7

    .line 104
    .line 105
    const-string v5, "null"

    .line 106
    .line 107
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_5

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eqz v3, :cond_6

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_6
    invoke-static {p0}, Lcom/sgscq/vpn/handler/p0;->w(Ljava/util/Map;)I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-interface {p0, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    invoke-interface {p0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_7
    :goto_0
    invoke-interface {p0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    :goto_1
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 143
    .line 144
    .line 145
    move-result-wide v3

    .line 146
    sget-boolean v1, Lcom/sgscq/vpn/c7;->i:Z

    .line 147
    .line 148
    const/4 v5, 0x0

    .line 149
    if-nez v1, :cond_e

    .line 150
    .line 151
    const-wide/16 v6, 0x0

    .line 152
    .line 153
    cmp-long v1, v3, v6

    .line 154
    .line 155
    if-gtz v1, :cond_8

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_8
    invoke-static {p0}, Lcom/sgscq/vpn/handler/p0;->w(Ljava/util/Map;)I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    invoke-static {v1, v0, p0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    .line 167
    .line 168
    .line 169
    move-result v8

    .line 170
    if-lt v8, v1, :cond_9

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_9
    invoke-static {v2, p0}, Lcom/sgscq/vpn/handler/p0;->M(Ljava/lang/String;Ljava/util/Map;)J

    .line 174
    .line 175
    .line 176
    move-result-wide v9

    .line 177
    cmp-long v11, v9, v6

    .line 178
    .line 179
    if-lez v11, :cond_d

    .line 180
    .line 181
    cmp-long v11, v9, v3

    .line 182
    .line 183
    if-lez v11, :cond_a

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_a
    sub-long/2addr v3, v9

    .line 187
    const-wide/16 v11, 0x258

    .line 188
    .line 189
    div-long/2addr v3, v11

    .line 190
    cmp-long v6, v3, v6

    .line 191
    .line 192
    if-gtz v6, :cond_b

    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_b
    int-to-long v6, v1

    .line 196
    int-to-long v13, v8

    .line 197
    sub-long/2addr v6, v13

    .line 198
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 199
    .line 200
    .line 201
    move-result-wide v3

    .line 202
    long-to-int v3, v3

    .line 203
    add-int/2addr v8, v3

    .line 204
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-interface {p0, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    if-lt v8, v1, :cond_c

    .line 212
    .line 213
    :goto_2
    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_c
    int-to-long v0, v3

    .line 218
    mul-long/2addr v0, v11

    .line 219
    add-long/2addr v0, v9

    .line 220
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    goto :goto_4

    .line 225
    :cond_d
    :goto_3
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    :goto_4
    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    :cond_e
    :goto_5
    const-string v0, "ladderRankSalary"

    .line 233
    .line 234
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-nez v1, :cond_f

    .line 239
    .line 240
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    :cond_f
    return-void
.end method

.method public static Q(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p0}, Lcom/sgscq/vpn/w1;->G0(Ljava/lang/String;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v4}, Lcom/sgscq/vpn/w1;->z0(Ljava/lang/String;)Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-nez v5, :cond_0

    .line 42
    .line 43
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v1, p0}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    if-nez p0, :cond_2

    .line 52
    .line 53
    move-object p0, v0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const-string v3, "general_fate_id"

    .line 56
    .line 57
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    :goto_1
    instance-of v3, p0, Ljava/util/List;

    .line 62
    .line 63
    if-nez v3, :cond_3

    .line 64
    .line 65
    goto/16 :goto_7

    .line 66
    .line 67
    :cond_3
    check-cast p0, Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_b

    .line 78
    .line 79
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v1, v3}, Lcom/sgscq/vpn/w1;->D0(Ljava/lang/String;)Ljava/util/Map;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    if-nez v3, :cond_5

    .line 92
    .line 93
    move-object v4, v0

    .line 94
    goto :goto_3

    .line 95
    :cond_5
    const-string v4, "fate_object"

    .line 96
    .line 97
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    :goto_3
    instance-of v5, v4, Ljava/util/List;

    .line 102
    .line 103
    if-nez v5, :cond_6

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_6
    const-string v5, "fate_type"

    .line 107
    .line 108
    const-string v6, ""

    .line 109
    .line 110
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    check-cast v4, Ljava/util/List;

    .line 119
    .line 120
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    :cond_7
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-eqz v5, :cond_4

    .line 129
    .line 130
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v1, v5}, Lcom/sgscq/vpn/w1;->z0(Ljava/lang/String;)Ljava/util/Map;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    const/4 v7, 0x1

    .line 143
    const/4 v8, 0x0

    .line 144
    if-eqz v6, :cond_8

    .line 145
    .line 146
    move v6, v7

    .line 147
    goto :goto_5

    .line 148
    :cond_8
    move v6, v8

    .line 149
    :goto_5
    const-string v9, "3"

    .line 150
    .line 151
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    if-eqz v9, :cond_9

    .line 156
    .line 157
    const-string v9, "2\\d{5}"

    .line 158
    .line 159
    invoke-virtual {v5, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    if-eqz v9, :cond_9

    .line 164
    .line 165
    goto :goto_6

    .line 166
    :cond_9
    move v7, v8

    .line 167
    :goto_6
    if-nez v6, :cond_a

    .line 168
    .line 169
    if-eqz v7, :cond_7

    .line 170
    .line 171
    :cond_a
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    if-nez v6, :cond_7

    .line 176
    .line 177
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_b
    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 182
    .line 183
    .line 184
    return-object v2
.end method

.method public static R(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p0}, Lcom/sgscq/vpn/w1;->H0(Ljava/lang/String;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v4}, Lcom/sgscq/vpn/handler/p0;->H(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-nez v5, :cond_0

    .line 42
    .line 43
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    sget-object v3, Lcom/sgscq/vpn/handler/p0;->e:Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-nez v4, :cond_2

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {v1, p0}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    if-nez p0, :cond_3

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    const-string v0, "general_fate_id"

    .line 74
    .line 75
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :goto_1
    invoke-static {v0}, Lcom/sgscq/vpn/handler/p0;->X(Ljava/lang/Object;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_7

    .line 92
    .line 93
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/w1;->D0(Ljava/lang/String;)Ljava/util/Map;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    const-string v3, "fate_type"

    .line 108
    .line 109
    const-string v4, ""

    .line 110
    .line 111
    const-string v5, "4"

    .line 112
    .line 113
    invoke-static {v0, v3, v4, v5}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-nez v3, :cond_5

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    const-string v3, "fate_object"

    .line 121
    .line 122
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v0}, Lcom/sgscq/vpn/handler/p0;->X(Ljava/lang/Object;)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_4

    .line 139
    .line 140
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-static {v3}, Lcom/sgscq/vpn/handler/p0;->H(Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_6

    .line 153
    .line 154
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-nez v4, :cond_6

    .line 159
    .line 160
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_7
    return-object v2
.end method

.method public static S(IILjava/lang/String;)Ljava/util/ArrayList;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Lcom/sgscq/vpn/handler/p0;->Q(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x1

    .line 29
    if-eqz v3, :cond_4

    .line 30
    .line 31
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v3}, Lcom/sgscq/vpn/w1;->z0(Ljava/lang/String;)Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-static {v3, v5}, Lcom/sgscq/vpn/handler/p0;->z(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-nez v7, :cond_0

    .line 50
    .line 51
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-nez v6, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance v6, Lcom/sgscq/vpn/handler/o0;

    .line 59
    .line 60
    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-nez v5, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const-string v8, "refine_bonus_type"

    .line 68
    .line 69
    const-string v9, ""

    .line 70
    .line 71
    invoke-interface {v5, v8, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-static {v5}, Lcom/sgscq/vpn/handler/p0;->W(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-gtz v5, :cond_3

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    :goto_1
    const/4 v4, 0x0

    .line 99
    invoke-direct {v6, v3, p0, v7, v4}, Lcom/sgscq/vpn/handler/o0;-><init>(Ljava/lang/String;IIZ)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    move p2, v4

    .line 107
    :goto_2
    const/4 v0, 0x4

    .line 108
    if-gt p2, v0, :cond_7

    .line 109
    .line 110
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eqz v3, :cond_5

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_5
    sget-object v3, Lcom/sgscq/vpn/handler/p0;->a:[Ljava/lang/String;

    .line 122
    .line 123
    aget-object v3, v3, p2

    .line 124
    .line 125
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    new-instance v0, Lcom/sgscq/vpn/handler/o0;

    .line 129
    .line 130
    const-string v5, "xiashen_jinglian_up"

    .line 131
    .line 132
    invoke-static {v5}, Lcom/sgscq/vpn/handler/p0;->W(Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    if-gtz v5, :cond_6

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_6
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    :goto_3
    invoke-direct {v0, v3, p0, v6, v4}, Lcom/sgscq/vpn/handler/o0;-><init>(Ljava/lang/String;IIZ)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    :goto_4
    add-int/lit8 p2, p2, 0x1

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_7
    return-object v1
.end method

.method public static T(Ljava/lang/String;Ljava/util/LinkedHashSet;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/handler/p0;->R(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/sgscq/vpn/handler/p0;->i0(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 40
    :goto_1
    if-eqz v1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-object v0

    .line 44
    :cond_2
    const-string p0, ""

    .line 45
    .line 46
    return-object p0
.end method

.method public static U(I)Lcom/sgscq/vpn/config/e;
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    const/16 v1, 0x2710

    .line 7
    .line 8
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    sub-int/2addr v1, p0

    .line 13
    const/16 p0, 0x64

    .line 14
    .line 15
    div-int/2addr v1, p0

    .line 16
    const/4 v2, 0x5

    .line 17
    add-int/2addr v1, v2

    .line 18
    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    mul-int/lit8 p0, v4, 0x4

    .line 27
    .line 28
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    mul-int/lit8 p0, v4, 0x3

    .line 33
    .line 34
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    const/4 p0, 0x0

    .line 39
    invoke-static {p0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0, v4}, Lcom/sgscq/vpn/w1;->h1(I)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/16 v1, 0x50

    .line 52
    .line 53
    const/16 v3, 0xb

    .line 54
    .line 55
    if-lt v0, v1, :cond_0

    .line 56
    .line 57
    move v2, v3

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/16 v1, 0x3c

    .line 60
    .line 61
    if-lt v0, v1, :cond_1

    .line 62
    .line 63
    const/16 v2, 0xa

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const/16 v1, 0x28

    .line 67
    .line 68
    if-lt v0, v1, :cond_2

    .line 69
    .line 70
    const/16 v2, 0x9

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const/16 v1, 0x23

    .line 74
    .line 75
    if-lt v0, v1, :cond_3

    .line 76
    .line 77
    const/16 v2, 0x8

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    const/16 v1, 0x19

    .line 81
    .line 82
    if-lt v0, v1, :cond_4

    .line 83
    .line 84
    const/4 v2, 0x7

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    const/16 v1, 0x14

    .line 87
    .line 88
    if-lt v0, v1, :cond_5

    .line 89
    .line 90
    const/4 v2, 0x6

    .line 91
    goto :goto_0

    .line 92
    :cond_5
    const/16 v1, 0xf

    .line 93
    .line 94
    if-lt v0, v1, :cond_6

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_6
    if-lt v0, v3, :cond_7

    .line 98
    .line 99
    const/4 v2, 0x4

    .line 100
    goto :goto_0

    .line 101
    :cond_7
    if-lt v0, v2, :cond_8

    .line 102
    .line 103
    const/4 v2, 0x3

    .line 104
    goto :goto_0

    .line 105
    :cond_8
    const/4 v2, 0x2

    .line 106
    :goto_0
    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    new-instance p0, Lcom/sgscq/vpn/config/e;

    .line 111
    .line 112
    const/16 v8, 0x64

    .line 113
    .line 114
    const/16 v9, 0x1e

    .line 115
    .line 116
    const/4 v10, 0x1

    .line 117
    move-object v3, p0

    .line 118
    invoke-direct/range {v3 .. v10}, Lcom/sgscq/vpn/config/e;-><init>(IIIIIII)V

    .line 119
    .line 120
    .line 121
    return-object p0
.end method

.method public static V(Ljava/lang/String;)Ljava/util/Map;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_8

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    sget-object v1, Lcom/sgscq/vpn/handler/p0;->h:Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    if-nez v1, :cond_7

    .line 15
    .line 16
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "skills.json"

    .line 22
    .line 23
    invoke-static {v0, v2}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->t1(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const-string v4, "0"

    .line 40
    .line 41
    const-string v5, "id"

    .line 42
    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    instance-of v6, v3, Ljava/util/Map;

    .line 50
    .line 51
    if-nez v6, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    check-cast v3, Ljava/util/Map;

    .line 55
    .line 56
    const-string v6, ""

    .line 57
    .line 58
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-nez v6, :cond_1

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-nez v4, :cond_1

    .line 77
    .line 78
    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_6

    .line 87
    .line 88
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_6

    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Ljava/util/Map$Entry;

    .line 111
    .line 112
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    instance-of v3, v3, Ljava/util/Map;

    .line 117
    .line 118
    if-nez v3, :cond_5

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    check-cast v3, Ljava/util/Map;

    .line 126
    .line 127
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-interface {v3, v5, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-nez v6, :cond_4

    .line 144
    .line 145
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-nez v6, :cond_4

    .line 150
    .line 151
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_6
    sput-object v1, Lcom/sgscq/vpn/handler/p0;->h:Ljava/util/LinkedHashMap;

    .line 156
    .line 157
    :cond_7
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    check-cast p0, Ljava/util/Map;

    .line 162
    .line 163
    return-object p0

    .line 164
    :cond_8
    :goto_2
    return-object v0
.end method

.method public static W(Ljava/lang/String;)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_b

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_b

    .line 9
    .line 10
    const-string v1, "null"

    .line 11
    .line 12
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_0
    sget-object v1, Lcom/sgscq/vpn/handler/p0;->g:Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    if-nez v1, :cond_9

    .line 23
    .line 24
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 25
    .line 26
    sget-object v2, Lcom/sgscq/vpn/handler/p0;->d:Ljava/util/LinkedHashMap;

    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    const-string v2, "refine_conf.json"

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-static {v3, v2}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_8

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_8

    .line 45
    .line 46
    :try_start_0
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_8

    .line 63
    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Ljava/util/Map$Entry;

    .line 69
    .line 70
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Ljava/lang/String;

    .line 75
    .line 76
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    instance-of v5, v3, Ljava/util/List;

    .line 81
    .line 82
    if-eqz v5, :cond_1

    .line 83
    .line 84
    check-cast v3, Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    goto :goto_3

    .line 91
    :cond_1
    instance-of v5, v3, Ljava/util/Map;

    .line 92
    .line 93
    if-nez v5, :cond_2

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    check-cast v3, Ljava/util/Map;

    .line 97
    .line 98
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    const/4 v5, -0x1

    .line 107
    move v7, v0

    .line 108
    move v6, v5

    .line 109
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    if-eqz v8, :cond_5

    .line 114
    .line 115
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    invoke-static {v8, v5}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    if-gez v8, :cond_3

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_3
    if-nez v8, :cond_4

    .line 131
    .line 132
    const/4 v7, 0x1

    .line 133
    :cond_4
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    goto :goto_1

    .line 138
    :cond_5
    if-gez v6, :cond_6

    .line 139
    .line 140
    :goto_2
    move v3, v0

    .line 141
    goto :goto_3

    .line 142
    :cond_6
    if-eqz v7, :cond_7

    .line 143
    .line 144
    add-int/lit8 v6, v6, 0x1

    .line 145
    .line 146
    :cond_7
    move v3, v6

    .line 147
    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :catch_0
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 156
    .line 157
    .line 158
    :cond_8
    sput-object v1, Lcom/sgscq/vpn/handler/p0;->g:Ljava/util/LinkedHashMap;

    .line 159
    .line 160
    :cond_9
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    check-cast p0, Ljava/lang/Integer;

    .line 165
    .line 166
    if-nez p0, :cond_a

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    :cond_b
    :goto_4
    return v0
.end method

.method public static X(Ljava/lang/Object;)Ljava/util/List;
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;DDDDLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 10

    .line 1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p11

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v4

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p1}, Lcom/sgscq/vpn/w1;->Y1(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const-string v6, "pk_id"

    invoke-interface {v5, v6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "id"

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "general_id"

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "general_pk_id"

    invoke-interface {v5, v6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "card_type"

    const-string v6, "1"

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "get_time"

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "status"

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "general_status"

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "level"

    invoke-interface {v5, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "general_level"

    invoke-interface {v5, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hp"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "general_hp"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "base_hp"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "attr_hp"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "general_hp_attr"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "atk"

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "general_attack"

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "base_attack"

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "attr_attack"

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "general_attack_attr"

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "def"

    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "general_defense"

    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "base_defense"

    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "attr_defense"

    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "general_defense_attr"

    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wis"

    invoke-static/range {p9 .. p10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "general_wisdom"

    invoke-static/range {p9 .. p10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "base_wisdom"

    invoke-static/range {p9 .. p10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "attr_wisdom"

    invoke-static/range {p9 .. p10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "general_wisdom_attr"

    invoke-static/range {p9 .. p10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fighting"

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "general_fighting"

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fight_point"

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fighting_point"

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "insight_level"

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "breachLevel"

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "star_level"

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "general_star"

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p12, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object/from16 v0, p12

    :goto_0
    const-string v2, "major_pk_id"

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "position"

    move-object/from16 v2, p13

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "talent_point"

    const-string v2, "0"

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ganoderma_num"

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "culture_info"

    invoke-virtual {v5, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/util/Map;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "general_avatar"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "general_painting"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "general_painting_id"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "resource_id"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, p1}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-wide/16 v3, 0x0

    const-string v1, "general_orbit"

    const-string v7, "general_sex"

    if-eqz v0, :cond_3

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0, v3, v4}, Lcom/sgscq/vpn/handler/p0;->y(Ljava/lang/Object;D)D

    move-result-wide v8

    cmpl-double v8, v8, v3

    if-lez v8, :cond_3

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v5, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcom/sgscq/vpn/handler/p0;->y(Ljava/lang/Object;D)D

    move-result-wide v7

    cmpg-double v0, v7, v3

    if-gtz v0, :cond_5

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v5
.end method

.method public static Z(Ljava/lang/String;ILjava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 4

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Lcom/sgscq/vpn/w1;->Z1(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p2}, Lcom/sgscq/vpn/w1;->T0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "skill_id"

    invoke-virtual {v1, v0, p2}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "0"

    if-nez v2, :cond_0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string p2, "300000"

    :cond_1
    const-string v2, "pk_id"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "general_pk_id"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "id"

    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "skill_code"

    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pos"

    const-string v0, "1"

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "position"

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "skill_position"

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "is_natural"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "get_time"

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "level"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "skill_level"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "exp"

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "card_type"

    const-string p1, "4"

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, v1}, Lcom/sgscq/vpn/handler/p0;->e0(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    return-object v1
.end method

.method public static a(Ljava/util/Map;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_8

    .line 5
    .line 6
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_0
    sget-boolean v2, Lcom/sgscq/vpn/c7;->i:Z

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    cmp-long v6, v2, v4

    .line 26
    .line 27
    if-gtz v6, :cond_2

    .line 28
    .line 29
    return v1

    .line 30
    :cond_2
    const-string v6, "ladderSalaryAt"

    .line 31
    .line 32
    invoke-static {v6, v0}, Lcom/sgscq/vpn/handler/p0;->M(Ljava/lang/String;Ljava/util/Map;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v7

    .line 36
    cmp-long v9, v7, v4

    .line 37
    .line 38
    if-lez v9, :cond_7

    .line 39
    .line 40
    cmp-long v9, v7, v2

    .line 41
    .line 42
    if-lez v9, :cond_3

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_3
    sub-long/2addr v2, v7

    .line 46
    const-wide/16 v9, 0x258

    .line 47
    .line 48
    div-long/2addr v2, v9

    .line 49
    cmp-long v11, v2, v4

    .line 50
    .line 51
    if-gtz v11, :cond_4

    .line 52
    .line 53
    return v1

    .line 54
    :cond_4
    const-string v11, "ladder_rank"

    .line 55
    .line 56
    const/16 v12, 0x270f

    .line 57
    .line 58
    invoke-static {v12, v11, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    invoke-static {v11}, Lcom/sgscq/vpn/p5;->f1(I)I

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    int-to-long v11, v11

    .line 67
    mul-long/2addr v11, v2

    .line 68
    const-string v13, "ladderRankSalary"

    .line 69
    .line 70
    invoke-static {v1, v13, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    int-to-long v14, v1

    .line 75
    add-long/2addr v14, v11

    .line 76
    const-wide/32 v16, 0x7fffffff

    .line 77
    .line 78
    .line 79
    cmp-long v1, v14, v16

    .line 80
    .line 81
    const v18, 0x7fffffff

    .line 82
    .line 83
    .line 84
    if-lez v1, :cond_5

    .line 85
    .line 86
    move/from16 v1, v18

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->max(JJ)J

    .line 90
    .line 91
    .line 92
    move-result-wide v14

    .line 93
    long-to-int v1, v14

    .line 94
    :goto_0
    const-string v14, "ladder_rank_salary"

    .line 95
    .line 96
    invoke-static {v1, v0, v13, v1, v14}, Lc/a;->t(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    cmp-long v1, v11, v16

    .line 100
    .line 101
    if-lez v1, :cond_6

    .line 102
    .line 103
    move/from16 v1, v18

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_6
    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 107
    .line 108
    .line 109
    move-result-wide v4

    .line 110
    long-to-int v1, v4

    .line 111
    :goto_1
    const-string v4, "ladder_total_rank_salary"

    .line 112
    .line 113
    invoke-static {v1, v4, v0}, Lcom/sgscq/vpn/handler/p0;->D(ILjava/lang/String;Ljava/util/Map;)V

    .line 114
    .line 115
    .line 116
    mul-long/2addr v2, v9

    .line 117
    add-long/2addr v2, v7

    .line 118
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    const/4 v0, 0x1

    .line 126
    return v0

    .line 127
    :cond_7
    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    :cond_8
    :goto_3
    return v1
.end method

.method public static a0(ILjava/util/Map;)I
    .locals 5

    .line 1
    const-string v0, "ladder_rank"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    :cond_0
    const-string v0, "rank"

    .line 18
    .line 19
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    :cond_1
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    :cond_2
    const-string v0, "user_rank"

    .line 34
    .line 35
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/String;

    .line 40
    .line 41
    :cond_3
    if-eqz v0, :cond_4

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_5

    .line 48
    .line 49
    :cond_4
    const-string v0, "ladderRank"

    .line 50
    .line 51
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Ljava/lang/String;

    .line 56
    .line 57
    :cond_5
    if-eqz v0, :cond_6

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_7

    .line 64
    .line 65
    :cond_6
    const-string v0, "server_rank"

    .line 66
    .line 67
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/String;

    .line 72
    .line 73
    :cond_7
    if-eqz v0, :cond_8

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_9

    .line 80
    .line 81
    :cond_8
    const-string v0, "target_rank"

    .line 82
    .line 83
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Ljava/lang/String;

    .line 88
    .line 89
    :cond_9
    const/16 v1, 0xb

    .line 90
    .line 91
    const-string v2, "ladder_npc_"

    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    if-eqz v0, :cond_a

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_d

    .line 101
    .line 102
    :cond_a
    const-string v0, "player_id"

    .line 103
    .line 104
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Ljava/lang/String;

    .line 109
    .line 110
    if-eqz v0, :cond_c

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-nez v4, :cond_b

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_b
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    goto :goto_1

    .line 124
    :cond_c
    :goto_0
    move-object v0, v3

    .line 125
    :cond_d
    :goto_1
    if-eqz v0, :cond_e

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_11

    .line 132
    .line 133
    :cond_e
    const-string v0, "other_user_id"

    .line 134
    .line 135
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Ljava/lang/String;

    .line 140
    .line 141
    if-eqz p1, :cond_10

    .line 142
    .line 143
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_f

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_f
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    :cond_10
    :goto_2
    move-object v0, v3

    .line 155
    :cond_11
    invoke-static {v0, p0}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    return p0
.end method

.method public static b(IILjava/util/List;Ljava/util/LinkedHashMap;)V
    .locals 4

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, v2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    if-ge p0, p1, :cond_1

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/Map;

    const-string v2, "hpCur"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/sgscq/vpn/handler/p0;->y(Ljava/lang/Object;D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static b0(Ljava/util/Map;)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lcom/sgscq/vpn/w1;->B(Ljava/util/Map;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    const-string v0, "TeamGeneral"

    .line 17
    .line 18
    invoke-static {v0, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/4 v0, 0x0

    .line 27
    move v1, v0

    .line 28
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x1

    .line 33
    const/4 v4, 0x3

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/util/Map;

    .line 41
    .line 42
    const-string v5, "position"

    .line 43
    .line 44
    invoke-static {v2, v5, v0}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-lt v2, v3, :cond_1

    .line 49
    .line 50
    if-gt v2, v4, :cond_1

    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    if-nez v1, :cond_3

    .line 56
    .line 57
    move p0, v3

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    :goto_1
    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    return p0
.end method

.method public static c(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/util/Map;II)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p4, v0, :cond_2

    .line 3
    .line 4
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    if-ne p4, p3, :cond_1

    .line 16
    .line 17
    invoke-static {p2}, Lcom/sgscq/vpn/handler/p0;->u(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-static {p4}, Lcom/sgscq/vpn/handler/p0;->U(I)Lcom/sgscq/vpn/config/e;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {p4, p1, p2}, Lcom/sgscq/vpn/handler/p0;->s(IILcom/sgscq/vpn/config/e;)Ljava/util/LinkedHashMap;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_1
    return-void
.end method

.method public static c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/sgscq/vpn/handler/p0;->e:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/sgscq/vpn/handler/p0;->f:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static d(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/util/Map;Ljava/lang/String;Lcom/sgscq/vpn/p7;II)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p6, v0, :cond_4

    .line 3
    .line 4
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :cond_0
    if-ne p6, p5, :cond_1

    .line 17
    .line 18
    invoke-static {p2}, Lcom/sgscq/vpn/handler/p0;->u(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {p4, p6}, Lcom/sgscq/vpn/p7;->r(I)Lcom/sgscq/vpn/v5;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    iget-object p2, p1, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p1, p6}, Lcom/sgscq/vpn/v5;->m(I)Ljava/util/LinkedHashMap;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-static {p6}, Lcom/sgscq/vpn/p5;->T0(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    const-string p4, "rank_name"

    .line 50
    .line 51
    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    invoke-static {p6}, Lcom/sgscq/vpn/p5;->f1(I)I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    div-int/lit8 p3, p3, 0xa

    .line 59
    .line 60
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    const-string p4, "fight_salary"

    .line 65
    .line 66
    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/sgscq/vpn/v5;->k()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    const-string p3, "user_ability"

    .line 74
    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p4

    .line 79
    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    const-string p3, "leadership_num"

    .line 83
    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p4

    .line 88
    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    const-string p3, "leadershipNum"

    .line 92
    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object p4

    .line 97
    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    const-string p3, "user_leadership_num"

    .line 101
    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object p4

    .line 106
    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    const-string p3, "govern"

    .line 110
    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_3
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-static {p6}, Lcom/sgscq/vpn/handler/p0;->U(I)Lcom/sgscq/vpn/config/e;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-static {p6, p1, p2}, Lcom/sgscq/vpn/handler/p0;->s(IILcom/sgscq/vpn/config/e;)Ljava/util/LinkedHashMap;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    :cond_4
    :goto_1
    return-void
.end method

.method public static d0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static e(Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;Lcom/sgscq/vpn/p7;Ljava/lang/String;Z)Ljava/util/LinkedHashMap;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/p0;->P(Ljava/util/Map;)V

    const-string v2, "SGSCQ_FIGHT"

    const-string v3, "applyFight: normalize done"

    invoke-static {v2, v3}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ladder_rank"

    const/16 v3, 0x270f

    invoke-static {v3, v2, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v4

    invoke-static {v0, v7, v2, v4, v5}, Lcom/sgscq/vpn/handler/p0;->g0(Ljava/util/Map;Ljava/util/ArrayList;IJ)Z

    const-string v2, "SGSCQ_FIGHT"

    const-string v4, "applyFight: settleRankDurationAt done"

    invoke-static {v2, v4}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/p0;->a(Ljava/util/Map;)Z

    const-string v2, "SGSCQ_FIGHT"

    const-string v4, "applyFight: accrueRankSalaryInternal done"

    invoke-static {v2, v4}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ladderChallengeTimes"

    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/p0;->w(Ljava/util/Map;)I

    move-result v4

    invoke-static {v4, v2, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v10

    if-gtz v10, :cond_0

    const-string v0, "\u6311\u6218\u6b21\u6570\u5df2\u7528\u5b8c"

    goto :goto_0

    :cond_0
    const-string v2, "user_energy"

    const/4 v4, 0x0

    invoke-static {v4, v2, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    const/4 v5, 0x1

    if-ge v2, v5, :cond_1

    const-string v2, "user_energy"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "user_energy"

    invoke-static {v4, v2, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    if-ge v2, v5, :cond_2

    const-string v0, "\u7cbe\u529b\u4e0d\u8db3"

    :goto_0
    invoke-static {v0}, Lcom/sgscq/vpn/handler/p0;->A(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v11

    const-string v2, "user_energy"

    invoke-static {v4, v2, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    sub-int/2addr v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    const-string v2, "ladder_rank"

    invoke-static {v3, v2, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v14

    invoke-static {v14, v1}, Lcom/sgscq/vpn/handler/p0;->a0(ILjava/util/Map;)I

    move-result v2

    invoke-static {v2, v8, v1}, Lcom/sgscq/vpn/handler/p0;->f0(ILcom/sgscq/vpn/p7;Ljava/util/Map;)Lcom/sgscq/vpn/v5;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 1
    iget-object v1, v15, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v8, v1}, Lcom/sgscq/vpn/p7;->v(Ljava/lang/String;)I

    move-result v2

    :cond_3
    move v6, v2

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "buildFightOutcome enter target="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " npc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v15, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SGSCQ_FIGHT"

    invoke-static {v4, v3}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    const-string v7, "TeamGeneral"

    invoke-static {v7, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v7, Lc/n;

    move/from16 v16, v13

    const/4 v13, 0x3

    invoke-direct {v7, v13}, Lc/n;-><init>(I)V

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v13, ""

    move-wide/from16 v17, v11

    const-string v11, "pk_id"

    const-string v12, "general_pk_id"

    move/from16 v19, v10

    const-string v10, "General"

    if-eqz v7, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    move-object/from16 p1, v5

    invoke-static {v7}, Lcom/sgscq/vpn/handler/p0;->l0(Ljava/util/Map;)I

    move-result v5

    const/4 v9, 0x1

    if-ge v5, v9, :cond_5

    goto :goto_5

    :cond_5
    invoke-interface {v7, v12, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {v10, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 6
    invoke-static {v9, v11, v13, v5}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v9, 0x0

    :goto_4
    if-nez v9, :cond_9

    goto :goto_5

    .line 7
    :cond_9
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    move-object/from16 v5, p1

    move-object/from16 v9, p4

    move-wide/from16 v11, v17

    move/from16 v10, v19

    goto :goto_2

    .line 8
    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    goto/16 :goto_b

    :cond_b
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v8, "bound_lieutenants"

    if-eqz v9, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    if-nez v9, :cond_c

    goto :goto_7

    :cond_c
    invoke-interface {v9, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v9, v11, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_d

    move-object/from16 p1, v7

    const-string v7, "null"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_d
    :goto_7
    move-object/from16 p1, v7

    :cond_e
    :goto_8
    move-object/from16 v7, p1

    move-object/from16 v8, p3

    goto :goto_6

    :cond_f
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_b

    :cond_10
    invoke-static {v10, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    const-string v10, "major_pk_id"

    invoke-interface {v9, v10, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    if-nez v10, :cond_11

    goto :goto_9

    :cond_11
    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Ljava/util/List;

    if-eqz v12, :cond_12

    check-cast v11, Ljava/util/List;

    goto :goto_a

    :cond_12
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :goto_a
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 9
    :cond_13
    :goto_b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "general_id"

    const-string v9, "\u73a9\u5bb6"

    if-eqz v7, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/p0;->x(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "id"

    invoke-interface {v7, v11, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v8, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    const-string v11, "general_name"

    invoke-interface {v7, v11, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 10
    new-instance v11, Lcom/sgscq/vpn/handler/e;

    const/4 v12, 0x0

    invoke-direct {v11, v8, v12, v10}, Lcom/sgscq/vpn/handler/e;-><init>(Ljava/lang/String;II)V

    .line 11
    iput-object v7, v11, Lcom/sgscq/vpn/handler/e;->d:Ljava/util/Map;

    .line 12
    iput-object v0, v11, Lcom/sgscq/vpn/handler/e;->e:Ljava/util/Map;

    .line 13
    iput-object v9, v11, Lcom/sgscq/vpn/handler/e;->g:Ljava/lang/String;

    const-wide v21, 0x4072c00000000000L    # 300.0

    const-wide/high16 v23, 0x4059000000000000L    # 100.0

    const-wide/high16 v25, 0x4059000000000000L    # 100.0

    move-object/from16 v20, v11

    .line 14
    invoke-virtual/range {v20 .. v26}, Lcom/sgscq/vpn/handler/e;->a(DDD)V

    invoke-static {v11}, Lcom/sgscq/vpn/handler/f;->a(Lcom/sgscq/vpn/handler/e;)Lcom/sgscq/vpn/battle/BattleUnit;

    move-result-object v7

    .line 15
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_14
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/p0;->x(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v3, "user_nickname"

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v25, 0x0

    .line 16
    invoke-static/range {v20 .. v25}, Lcom/sgscq/vpn/handler/p0;->N(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/sgscq/vpn/battle/BattleUnit;

    move-result-object v3

    .line 17
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "allies built="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " took "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v1

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "ms"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v15, :cond_16

    .line 19
    invoke-static {v6}, Lcom/sgscq/vpn/handler/p0;->U(I)Lcom/sgscq/vpn/config/e;

    move-result-object v3

    .line 20
    invoke-static {v6, v3}, Lcom/sgscq/vpn/handler/p0;->q(ILcom/sgscq/vpn/config/e;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_d

    .line 21
    :cond_16
    invoke-virtual {v15}, Lcom/sgscq/vpn/v5;->f()Ljava/util/List;

    move-result-object v3

    :goto_d
    move-object v10, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "enemyTeam built="

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v1

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v15, :cond_17

    const/4 v3, 0x0

    goto :goto_e

    .line 22
    :cond_17
    iget-object v3, v15, Lcom/sgscq/vpn/v5;->r:Ljava/util/Map;

    .line 23
    :goto_e
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_18

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 p1, v12

    move-object/from16 v12, v20

    check-cast v12, Ljava/util/Map;

    const-string v0, "131001"

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    const/16 v20, 0x1

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v21

    const-string v0, "\u5929\u68af\u5bf9\u624b"

    .line 24
    invoke-static {v0, v6}, La/b0;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v12

    move-object/from16 v25, v3

    .line 25
    invoke-static/range {v20 .. v25}, Lcom/sgscq/vpn/handler/p0;->N(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/sgscq/vpn/battle/BattleUnit;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    goto :goto_f

    .line 26
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "enemy units="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v1, v20, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/p0;->b0(Ljava/util/Map;)I

    move-result v0

    if-nez v15, :cond_19

    .line 27
    invoke-static {v6}, Lcom/sgscq/vpn/handler/p0;->U(I)Lcom/sgscq/vpn/config/e;

    move-result-object v1

    const/4 v2, 0x0

    .line 28
    invoke-static {v6, v2, v1}, Lcom/sgscq/vpn/handler/p0;->s(IILcom/sgscq/vpn/config/e;)Ljava/util/LinkedHashMap;

    move-result-object v1

    goto :goto_10

    .line 29
    :cond_19
    invoke-virtual {v15, v6}, Lcom/sgscq/vpn/v5;->m(I)Ljava/util/LinkedHashMap;

    move-result-object v1

    :goto_10
    move-object v7, v1

    if-nez v15, :cond_1a

    .line 30
    invoke-static {v6}, Lcom/sgscq/vpn/handler/p0;->U(I)Lcom/sgscq/vpn/config/e;

    move-result-object v1

    .line 31
    iget v1, v1, Lcom/sgscq/vpn/config/e;->d:I

    const-string v2, "user_ability"

    invoke-static {v1, v2, v7}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v1

    goto :goto_11

    :cond_1a
    invoke-virtual {v15}, Lcom/sgscq/vpn/v5;->k()I

    move-result v1

    :goto_11
    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v12, "simulate start allies="

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " enemies="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo/h;->a()Lo/h;

    move-result-object v3

    new-instance v12, Lcom/sgscq/vpn/battle/BattleScenario;

    const/16 v23, 0x0

    move/from16 v28, v14

    move-object/from16 p1, v15

    int-to-double v14, v0

    move-object/from16 v30, v7

    move-object/from16 v29, v8

    int-to-double v7, v9

    move-object/from16 v20, v12

    move-object/from16 v21, v5

    move-object/from16 v22, v11

    move-wide/from16 v24, v14

    move-wide/from16 v26, v7

    invoke-direct/range {v20 .. v27}, Lcom/sgscq/vpn/battle/BattleScenario;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;DD)V

    invoke-virtual {v3, v12}, Lo/h;->b(Lcom/sgscq/vpn/battle/BattleScenario;)Lcom/sgscq/vpn/battle/BattleResult;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "simulate done took "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms rounds="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sgscq/vpn/battle/BattleResult;->getFightInfo()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sgscq/vpn/battle/BattleResult;->getFightInfo()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 32
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v7, v1

    goto :goto_12

    :cond_1b
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object v7, v2

    .line 33
    :goto_12
    invoke-virtual {v3}, Lcom/sgscq/vpn/battle/BattleResult;->isSuccess()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "success"

    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v7

    move-object/from16 v2, p0

    move v3, v6

    move v4, v0

    move v5, v9

    move v0, v6

    move-object/from16 v6, v30

    invoke-static/range {v1 .. v6}, Lcom/sgscq/vpn/handler/p0;->k(Ljava/util/LinkedHashMap;Ljava/util/Map;IIILjava/util/LinkedHashMap;)V

    const-string v1, "init"

    .line 34
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/Map;

    if-nez v2, :cond_1c

    goto :goto_13

    :cond_1c
    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "skipRounds"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :goto_13
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/p0;->u(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "attacker"

    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "defender"

    move-object/from16 v2, v30

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "enemy_team"

    invoke-interface {v7, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x0

    :goto_14
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    const v4, 0x7fffffff

    if-ge v2, v3, :cond_20

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_20

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sgscq/vpn/battle/BattleUnit;

    invoke-virtual {v3}, Lcom/sgscq/vpn/battle/BattleUnit;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object/from16 v5, v29

    goto :goto_16

    :cond_1d
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    move-object/from16 v5, v29

    invoke-interface {v3, v5, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1e

    goto :goto_16

    :cond_1e
    const/4 v6, 0x0

    invoke-static {v6, v3, v1}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v6

    if-lt v6, v4, :cond_1f

    goto :goto_15

    :cond_1f
    add-int/lit8 v4, v6, 0x1

    :goto_15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_16
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v29, v5

    goto :goto_14

    .line 36
    :cond_20
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "success"

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v21

    move/from16 v2, v28

    if-eqz v21, :cond_21

    if-ge v0, v2, :cond_21

    const/4 v3, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_17

    :cond_21
    move v0, v2

    :goto_17
    sub-int v14, v2, v0

    if-eqz v21, :cond_22

    const/4 v3, 0x2

    goto :goto_18

    :cond_22
    const/4 v3, 0x1

    :goto_18
    move-object/from16 v5, p3

    if-eqz v5, :cond_2d

    if-eqz p1, :cond_2d

    move-object/from16 v6, p1

    .line 37
    iget-object v0, v6, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    if-eqz v21, :cond_2c

    move-object/from16 v8, p4

    if-eqz v8, :cond_2b

    if-eqz v0, :cond_2b

    .line 38
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    goto/16 :goto_1c

    :cond_23
    invoke-virtual/range {p3 .. p3}, Lcom/sgscq/vpn/p7;->e()V

    invoke-virtual/range {p3 .. p3}, Lcom/sgscq/vpn/p7;->a()V

    iget-object v9, v5, Lcom/sgscq/vpn/p7;->a:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v10, v5, Lcom/sgscq/vpn/p7;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sgscq/vpn/v5;

    if-nez v10, :cond_24

    move-object/from16 v11, p0

    goto :goto_1b

    :cond_24
    move-object/from16 v11, p0

    invoke-virtual {v5, v8, v11}, Lcom/sgscq/vpn/p7;->t(Ljava/lang/String;Ljava/util/Map;)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v5, v0, v13}, Lcom/sgscq/vpn/p7;->t(Ljava/lang/String;Ljava/util/Map;)I

    move-result v13

    if-lez v12, :cond_2a

    if-lez v13, :cond_2a

    if-lt v13, v12, :cond_25

    goto :goto_1b

    :cond_25
    invoke-virtual {v5, v8, v13}, Lcom/sgscq/vpn/p7;->A(Ljava/lang/String;I)V

    .line 39
    iget-object v14, v10, Lcom/sgscq/vpn/v5;->r:Ljava/util/Map;

    if-eqz v14, :cond_26

    const/4 v14, 0x1

    goto :goto_19

    :cond_26
    const/4 v14, 0x0

    :goto_19
    if-nez v14, :cond_27

    .line 40
    invoke-virtual {v5, v0, v12}, Lcom/sgscq/vpn/p7;->A(Ljava/lang/String;I)V

    :cond_27
    invoke-static {v13, v11}, Lcom/sgscq/vpn/p7;->d(ILjava/util/Map;)V

    iget-object v14, v5, Lcom/sgscq/vpn/p7;->b:Lcom/sgscq/vpn/t;

    invoke-virtual {v14, v8, v13}, Lcom/sgscq/vpn/t;->e(Ljava/lang/String;I)V

    iget-object v13, v5, Lcom/sgscq/vpn/p7;->m:Ljava/util/LinkedHashMap;

    invoke-interface {v13, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v5, Lcom/sgscq/vpn/p7;->l:Ljava/util/LinkedHashMap;

    invoke-static {v8, v11}, Lcom/sgscq/vpn/v5;->j(Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/v5;

    move-result-object v14

    invoke-interface {v13, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-boolean v13, v10, Lcom/sgscq/vpn/v5;->f:Z

    if-eqz v13, :cond_29

    .line 42
    iget-object v10, v10, Lcom/sgscq/vpn/v5;->r:Ljava/util/Map;

    if-eqz v10, :cond_28

    const/4 v10, 0x1

    goto :goto_1a

    :cond_28
    const/4 v10, 0x0

    :goto_1a
    if-nez v10, :cond_29

    .line 43
    iget-object v10, v5, Lcom/sgscq/vpn/p7;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    if-eqz v10, :cond_29

    invoke-static {v12, v10}, Lcom/sgscq/vpn/p7;->d(ILjava/util/Map;)V

    iget-object v13, v5, Lcom/sgscq/vpn/p7;->b:Lcom/sgscq/vpn/t;

    invoke-virtual {v13, v0, v12}, Lcom/sgscq/vpn/t;->e(Ljava/lang/String;I)V

    iget-object v12, v5, Lcom/sgscq/vpn/p7;->m:Ljava/util/LinkedHashMap;

    invoke-interface {v12, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, v5, Lcom/sgscq/vpn/p7;->l:Ljava/util/LinkedHashMap;

    invoke-static {v0, v10}, Lcom/sgscq/vpn/v5;->j(Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/v5;

    move-result-object v10

    invoke-interface {v12, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    invoke-virtual/range {p3 .. p3}, Lcom/sgscq/vpn/p7;->s()V

    :cond_2a
    :goto_1b
    monitor-exit v9

    goto/16 :goto_1e

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2b
    :goto_1c
    move-object/from16 v11, p0

    goto/16 :goto_1e

    :cond_2c
    move-object/from16 v11, p0

    move-object/from16 v8, p4

    goto :goto_1e

    :cond_2d
    move-object/from16 v11, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p4

    const-string v9, "ladder_rank"

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v11, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "ladder_best_rank"

    const-string v10, "ladder_best_rank"

    invoke-static {v2, v10, v11}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v10

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v11, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_31

    if-eqz v21, :cond_30

    if-eqz v8, :cond_30

    .line 45
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_30

    invoke-virtual/range {p3 .. p3}, Lcom/sgscq/vpn/p7;->e()V

    invoke-virtual/range {p3 .. p3}, Lcom/sgscq/vpn/p7;->a()V

    iget-object v9, v5, Lcom/sgscq/vpn/p7;->a:Ljava/lang/Object;

    monitor-enter v9

    :try_start_1
    invoke-virtual {v5, v8, v11}, Lcom/sgscq/vpn/p7;->t(Ljava/lang/String;Ljava/util/Map;)I

    move-result v10

    if-lez v0, :cond_2f

    if-ge v0, v10, :cond_2f

    iget-object v10, v5, Lcom/sgscq/vpn/p7;->o:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2e

    goto :goto_1d

    :cond_2e
    invoke-virtual {v5, v8, v0}, Lcom/sgscq/vpn/p7;->A(Ljava/lang/String;I)V

    invoke-static {v0, v11}, Lcom/sgscq/vpn/p7;->d(ILjava/util/Map;)V

    iget-object v10, v5, Lcom/sgscq/vpn/p7;->b:Lcom/sgscq/vpn/t;

    invoke-virtual {v10, v8, v0}, Lcom/sgscq/vpn/t;->e(Ljava/lang/String;I)V

    iget-object v0, v5, Lcom/sgscq/vpn/p7;->m:Ljava/util/LinkedHashMap;

    invoke-interface {v0, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v5, Lcom/sgscq/vpn/p7;->l:Ljava/util/LinkedHashMap;

    invoke-static {v8, v11}, Lcom/sgscq/vpn/v5;->j(Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/v5;

    move-result-object v10

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    :goto_1d
    monitor-exit v9

    goto :goto_1e

    :catchall_1
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_30
    :goto_1e
    const-string v0, "ladder_rank"

    .line 46
    invoke-static {v2, v0, v11}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v0

    sub-int v14, v2, v0

    :cond_31
    move v15, v0

    move v0, v14

    if-eqz v21, :cond_32

    .line 47
    invoke-static {v15}, Lcom/sgscq/vpn/p5;->f1(I)I

    move-result v9

    .line 48
    div-int/lit8 v9, v9, 0xa

    goto :goto_1f

    :cond_32
    const/4 v9, 0x0

    :goto_1f
    if-nez v21, :cond_33

    const/4 v4, 0x0

    :goto_20
    move/from16 v10, p5

    goto :goto_21

    .line 49
    :cond_33
    invoke-static {v15}, Lcom/sgscq/vpn/p5;->f1(I)I

    move-result v10

    int-to-long v12, v10

    const-wide/16 v22, 0x7d

    mul-long v12, v12, v22

    const-wide/32 v22, 0x7fffffff

    cmp-long v10, v12, v22

    if-ltz v10, :cond_34

    goto :goto_20

    :cond_34
    long-to-int v4, v12

    goto :goto_20

    .line 50
    :goto_21
    invoke-static {v11, v10}, Lcom/sgscq/vpn/handler/p0;->K(Ljava/util/Map;Z)I

    move-result v10

    const-string v12, "ladderChallengeTimes"

    add-int/lit8 v13, v19, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v12, v17

    invoke-static {v12, v13, v11}, Lcom/sgscq/vpn/handler/p0;->j0(JLjava/util/Map;)V

    const-string v14, "ladderRankSalary"

    move-object/from16 p1, v6

    const-string v6, "ladderRankSalary"

    const/4 v8, 0x0

    invoke-static {v8, v6, v11}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v6

    add-int/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v11, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "ladder_total_fight_times"

    const/4 v14, 0x1

    invoke-static {v14, v6, v11}, Lcom/sgscq/vpn/handler/p0;->D(ILjava/lang/String;Ljava/util/Map;)V

    const-string v6, "ladder_total_rank_salary"

    invoke-static {v9, v6, v11}, Lcom/sgscq/vpn/handler/p0;->D(ILjava/lang/String;Ljava/util/Map;)V

    const-string v6, "user_honor"

    const-string v14, "user_honor"

    invoke-static {v8, v14, v11}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v8

    add-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v11, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long v5, v4

    invoke-static {v5, v6, v11}, Lcom/sgscq/vpn/p5;->b(JLjava/util/Map;)V

    invoke-static {v10, v11}, Lcom/sgscq/vpn/handler/p0;->B(ILjava/util/Map;)V

    const-string v5, "max_energy"

    const/16 v6, 0x96

    .line 51
    invoke-static {v6, v5, v11}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v6, v16

    .line 52
    invoke-static {v11, v6, v5, v12, v13}, Lcom/sgscq/vpn/p5;->e(Ljava/util/Map;IIJ)V

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 53
    invoke-static {v11, v5, v6}, Lcom/sgscq/vpn/handler/m;->o(Ljava/util/Map;II)Lcom/sgscq/vpn/handler/j;

    move-result-object v5

    move-object/from16 v6, p2

    .line 54
    invoke-static {v6, v11, v1}, Lcom/sgscq/vpn/handler/y0;->j(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {v6, v11}, Lcom/sgscq/vpn/handler/y0;->c(Ljava/util/List;Ljava/util/Map;)Lcom/sgscq/vpn/handler/j;

    move-result-object v1

    invoke-static {}, Lcom/sgscq/vpn/handler/p0;->k0()Ljava/util/LinkedHashMap;

    move-result-object v6

    const-string v8, "user_info"

    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/p0;->v(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v12

    invoke-interface {v6, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "fight_info"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v14, v2

    move-object/from16 v2, p1

    move/from16 v16, v0

    move/from16 v17, v9

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v10

    move-object/from16 v22, v7

    invoke-static/range {v14 .. v22}, Lcom/sgscq/vpn/handler/p0;->n(IIIIIIIZLjava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v3, "drop_info"

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v3, "hunshi"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "fight_result"

    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ladder_info"

    move-object/from16 v3, p3

    if-nez v3, :cond_35

    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/p0;->o(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v3

    goto :goto_22

    :cond_35
    move-object/from16 v4, p4

    invoke-static {v3, v4, v11}, Lcom/sgscq/vpn/handler/p0;->t(Lcom/sgscq/vpn/p7;Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v3

    :goto_22
    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6, v11, v5}, Lcom/sgscq/vpn/handler/p0;->i(Ljava/util/LinkedHashMap;Ljava/util/Map;Lcom/sgscq/vpn/handler/j;)V

    invoke-static {v6, v2}, Lcom/sgscq/vpn/handler/p0;->l(Ljava/util/LinkedHashMap;Lcom/sgscq/vpn/v5;)V

    invoke-static {v1, v6}, Lcom/sgscq/vpn/handler/p0;->m(Lcom/sgscq/vpn/handler/j;Ljava/util/LinkedHashMap;)V

    return-object v6
.end method

.method public static e0(Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/handler/p0;->V(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "skill_type"

    if-nez v0, :cond_1

    sget-object v0, Lcom/sgscq/vpn/handler/p0;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    invoke-static {v1, p1, v0}, Lcom/sgscq/vpn/handler/p0;->d0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    const-string p0, "upgrade_exp_type"

    invoke-static {p0, p1, v0}, Lcom/sgscq/vpn/handler/p0;->d0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    const-string p0, "upgrade_coin_type"

    invoke-static {p0, p1, v0}, Lcom/sgscq/vpn/handler/p0;->d0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    const-string p0, "eated_exp_type"

    invoke-static {p0, p1, v0}, Lcom/sgscq/vpn/handler/p0;->d0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    const-string p0, "grade"

    invoke-static {p0, p1, v0}, Lcom/sgscq/vpn/handler/p0;->d0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    const-string p0, "fighting"

    invoke-static {p0, p1, v0}, Lcom/sgscq/vpn/handler/p0;->d0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    const-string p0, "fighting_step"

    invoke-static {p0, p1, v0}, Lcom/sgscq/vpn/handler/p0;->d0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    const-string p0, "major_property"

    invoke-static {p0, p1, v0}, Lcom/sgscq/vpn/handler/p0;->d0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    const-string p0, "skill_code"

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public static f(Ljava/util/LinkedHashMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_4

    instance-of v0, p2, Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/Map;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    check-cast v3, Ljava/util/Map;

    const-string v4, "hpCur"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/sgscq/vpn/handler/p0;->y(Ljava/lang/Object;D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public static f0(ILcom/sgscq/vpn/p7;Ljava/util/Map;)Lcom/sgscq/vpn/v5;
    .locals 3

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "player_id"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v1, "other_user_id"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    :cond_2
    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v1}, Lcom/sgscq/vpn/p7;->g(Ljava/lang/String;)Lcom/sgscq/vpn/v5;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, p0}, Lcom/sgscq/vpn/p7;->r(I)Lcom/sgscq/vpn/v5;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public static g(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Lcom/sgscq/vpn/p7;)Ljava/util/LinkedHashMap;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/handler/p0;->P(Ljava/util/Map;)V

    const-string v0, "ladder_rank"

    const/16 v1, 0x270f

    invoke-static {v1, v0, p0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v0

    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v1

    invoke-static {p0, p2, v0, v1, v2}, Lcom/sgscq/vpn/handler/p0;->g0(Ljava/util/Map;Ljava/util/ArrayList;IJ)Z

    move-result v0

    invoke-static {p0}, Lcom/sgscq/vpn/handler/p0;->a(Ljava/util/Map;)Z

    move-result v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const-string v3, "account_uid"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "user_id"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    invoke-static {}, Lcom/sgscq/vpn/handler/p0;->k0()Ljava/util/LinkedHashMap;

    move-result-object v3

    if-nez p3, :cond_1

    invoke-static {v2}, Lcom/sgscq/vpn/handler/p0;->o(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {p3, p1, v2}, Lcom/sgscq/vpn/handler/p0;->t(Lcom/sgscq/vpn/p7;Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p1

    :goto_1
    const-string p3, "ladder_info"

    invoke-interface {v3, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {p2, p0}, Lcom/sgscq/vpn/handler/y0;->c(Ljava/util/List;Ljava/util/Map;)Lcom/sgscq/vpn/handler/j;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/sgscq/vpn/handler/p0;->m(Lcom/sgscq/vpn/handler/j;Ljava/util/LinkedHashMap;)V

    :cond_3
    return-object v3
.end method

.method public static g0(Ljava/util/Map;Ljava/util/ArrayList;IJ)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_6

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v1, p3, v3

    .line 11
    .line 12
    if-gtz v1, :cond_0

    .line 13
    .line 14
    goto :goto_3

    .line 15
    :cond_0
    const-string v1, "surrender_ladder_rank_duration_at"

    .line 16
    .line 17
    invoke-static {v1, p0}, Lcom/sgscq/vpn/handler/p0;->M(Ljava/lang/String;Ljava/util/Map;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    cmp-long v7, v5, v3

    .line 22
    .line 23
    if-lez v7, :cond_5

    .line 24
    .line 25
    cmp-long v7, v5, p3

    .line 26
    .line 27
    if-lez v7, :cond_1

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_1
    sub-long v5, p3, v5

    .line 31
    .line 32
    cmp-long v3, v5, v3

    .line 33
    .line 34
    if-gtz v3, :cond_2

    .line 35
    .line 36
    return v2

    .line 37
    :cond_2
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    const-string v2, "21"

    .line 45
    .line 46
    const-string v3, "41"

    .line 47
    .line 48
    const-wide/32 v7, 0x7fffffff

    .line 49
    .line 50
    .line 51
    cmp-long v1, v5, v7

    .line 52
    .line 53
    if-ltz v1, :cond_3

    .line 54
    .line 55
    const v1, 0x7fffffff

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    long-to-int v1, v5

    .line 60
    :goto_0
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    if-gtz v1, :cond_4

    .line 65
    .line 66
    sget-object v0, Lcom/sgscq/vpn/handler/y0;->a:Ljava/util/Set;

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    int-to-long v5, v1

    .line 70
    move-object v0, p0

    .line 71
    move-object v1, p1

    .line 72
    move v4, p2

    .line 73
    invoke-static/range {v0 .. v7}, Lcom/sgscq/vpn/handler/y0;->m(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :goto_1
    const/4 v0, 0x1

    .line 77
    return v0

    .line 78
    :cond_5
    :goto_2
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-interface {p0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    :cond_6
    :goto_3
    return v2
.end method

.method public static h(Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;Lcom/sgscq/vpn/p7;Ljava/lang/String;Z)Ljava/util/LinkedHashMap;
    .locals 49

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/p0;->P(Ljava/util/Map;)V

    const/16 v1, 0x270f

    const-string v9, "ladder_rank"

    invoke-static {v1, v9, v6}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v3

    invoke-static {v6, v7, v2, v3, v4}, Lcom/sgscq/vpn/handler/p0;->g0(Ljava/util/Map;Ljava/util/ArrayList;IJ)Z

    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/p0;->a(Ljava/util/Map;)Z

    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/p0;->w(Ljava/util/Map;)I

    move-result v2

    const-string v10, "ladderChallengeTimes"

    invoke-static {v2, v10, v6}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v11

    if-gtz v11, :cond_0

    const-string v0, "\u6311\u6218\u6b21\u6570\u5df2\u7528\u5b8c"

    goto :goto_0

    :cond_0
    const-string v2, "user_energy"

    const/4 v3, 0x0

    invoke-static {v3, v2, v6}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_1

    const-string v0, "\u7cbe\u529b\u4e0d\u8db3"

    :goto_0
    invoke-static {v0}, Lcom/sgscq/vpn/handler/p0;->A(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v12

    const/16 v5, 0xa

    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    sub-int/2addr v2, v14

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v1, v9, v6}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Lcom/sgscq/vpn/handler/p0;->a0(ILjava/util/Map;)I

    move-result v1

    invoke-static {v1, v8, v0}, Lcom/sgscq/vpn/handler/p0;->f0(ILcom/sgscq/vpn/p7;Ljava/util/Map;)Lcom/sgscq/vpn/v5;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v0, v4, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/sgscq/vpn/p7;->v(Ljava/lang/String;)I

    move-result v1

    :cond_2
    move/from16 v25, v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-wide/from16 v27, v12

    move/from16 v26, v15

    move/from16 v7, v16

    move/from16 v15, v17

    :goto_1
    const-string v12, "fight_result"

    const-string v13, "success"

    if-ge v7, v14, :cond_9

    move/from16 p1, v0

    if-nez v8, :cond_3

    const/4 v0, 0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    move-object/from16 v16, v1

    goto :goto_2

    :cond_3
    move-object/from16 v16, v1

    move/from16 v0, v25

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v8, :cond_4

    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    move-object v1, v4

    :goto_3
    if-nez v1, :cond_5

    move-object/from16 v17, v2

    .line 1
    invoke-static {v0}, Lcom/sgscq/vpn/handler/p0;->U(I)Lcom/sgscq/vpn/config/e;

    move-result-object v2

    .line 2
    invoke-static {v0, v2}, Lcom/sgscq/vpn/handler/p0;->q(ILcom/sgscq/vpn/config/e;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_4

    :cond_5
    move-object/from16 v17, v2

    .line 3
    invoke-virtual {v1}, Lcom/sgscq/vpn/v5;->f()Ljava/util/List;

    move-result-object v2

    :goto_4
    move-object/from16 v21, v2

    if-nez v1, :cond_6

    .line 4
    invoke-static {v0}, Lcom/sgscq/vpn/handler/p0;->U(I)Lcom/sgscq/vpn/config/e;

    move-result-object v2

    move/from16 v22, v3

    const/4 v3, 0x0

    .line 5
    invoke-static {v0, v3, v2}, Lcom/sgscq/vpn/handler/p0;->s(IILcom/sgscq/vpn/config/e;)Ljava/util/LinkedHashMap;

    move-result-object v2

    goto :goto_5

    :cond_6
    move/from16 v22, v3

    .line 6
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/v5;->m(I)Ljava/util/LinkedHashMap;

    move-result-object v2

    :goto_5
    move-object v3, v2

    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/p0;->b0(Ljava/util/Map;)I

    move-result v23

    if-nez v1, :cond_7

    .line 7
    invoke-static {v0}, Lcom/sgscq/vpn/handler/p0;->U(I)Lcom/sgscq/vpn/config/e;

    move-result-object v1

    .line 8
    iget v1, v1, Lcom/sgscq/vpn/config/e;->d:I

    const-string v2, "user_ability"

    invoke-static {v1, v2, v3}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v1

    goto :goto_6

    :cond_7
    invoke-virtual {v1}, Lcom/sgscq/vpn/v5;->k()I

    move-result v1

    :goto_6
    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v29, "roundMax"

    const/16 v30, 0xf

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const-string v31, "cards_size0"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    const-string v33, "cards_size1"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    const-string v35, "backups_size0"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    const-string v37, "backups_size1"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    const-string v39, "info"

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move/from16 v47, v0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    filled-new-array {v1, v0}, [Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v40

    const-string v41, "cards"

    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v43, "roundCur"

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    const-string v45, "skipRounds"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    filled-new-array/range {v29 .. v46}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "first"

    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v29, v3

    const-string v3, "rounds"

    filled-new-array {v3, v1, v13, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "init"

    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v13

    move/from16 v3, p1

    move/from16 v2, v47

    move-object v0, v13

    move-object/from16 v8, v16

    move-object/from16 v1, p0

    move-object/from16 v30, v10

    move/from16 v31, v11

    move-object/from16 v10, v17

    move-object/from16 v11, v21

    move/from16 v32, v14

    move-object/from16 p1, v29

    move v14, v3

    move/from16 v29, v22

    move/from16 v3, v23

    move-object/from16 v48, v4

    move/from16 v4, v24

    move-object/from16 v33, v9

    move v9, v5

    move-object/from16 v5, p1

    invoke-static/range {v0 .. v5}, Lcom/sgscq/vpn/handler/p0;->k(Ljava/util/LinkedHashMap;Ljava/util/Map;IIILjava/util/LinkedHashMap;)V

    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/p0;->u(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "attacker"

    invoke-interface {v13, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "defender"

    move-object/from16 v2, p1

    invoke-interface {v13, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "enemy_team"

    invoke-interface {v13, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sub-int v0, v9, v9

    .line 9
    invoke-static {v9}, Lcom/sgscq/vpn/p5;->f1(I)I

    move-result v1

    .line 10
    div-int/lit8 v1, v1, 0xa

    const/4 v2, 0x2

    .line 11
    invoke-static {v9}, Lcom/sgscq/vpn/p5;->f1(I)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v16, 0x7d

    mul-long v3, v3, v16

    const-wide/32 v16, 0x7fffffff

    cmp-long v5, v3, v16

    if-ltz v5, :cond_8

    const v3, 0x7fffffff

    goto :goto_7

    :cond_8
    long-to-int v3, v3

    :goto_7
    move/from16 v21, v3

    move/from16 v3, p5

    .line 12
    invoke-static {v6, v3}, Lcom/sgscq/vpn/handler/p0;->K(Ljava/util/Map;Z)I

    move-result v4

    add-int/2addr v15, v1

    add-int/lit8 v5, v18, 0x2

    add-int v11, v14, v21

    add-int v14, v20, v4

    add-int/lit8 v34, v19, 0x1

    const/16 v23, 0x1

    move/from16 v16, v9

    move/from16 v17, v9

    move/from16 v18, v0

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v22, v4

    move-object/from16 v24, v13

    invoke-static/range {v16 .. v24}, Lcom/sgscq/vpn/handler/p0;->n(IIIIIIIZLjava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "fight_info"

    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4, v6}, Lcom/sgscq/vpn/handler/p0;->B(ILjava/util/Map;)V

    add-int/lit8 v7, v7, 0x1

    move/from16 v18, v5

    move-object v1, v8

    move v5, v9

    move-object v2, v10

    move v0, v11

    move/from16 v20, v14

    move/from16 v3, v29

    move-object/from16 v10, v30

    move/from16 v11, v31

    move/from16 v14, v32

    move-object/from16 v9, v33

    move/from16 v19, v34

    move-object/from16 v4, v48

    move-object/from16 v8, p3

    goto/16 :goto_1

    :cond_9
    move-object v8, v1

    move-object/from16 v48, v4

    move-object/from16 v33, v9

    move-object/from16 v30, v10

    move/from16 v31, v11

    move/from16 v32, v14

    move v14, v0

    move-object v10, v2

    move v9, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v1, v33

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ladder_best_rank"

    invoke-static {v9, v0, v6}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v1

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sub-int v11, v31, v32

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v1, v30

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v0, v27

    invoke-static {v0, v1, v6}, Lcom/sgscq/vpn/handler/p0;->j0(JLjava/util/Map;)V

    const-string v2, "ladderRankSalary"

    const/4 v3, 0x0

    invoke-static {v3, v2, v6}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v4

    add-int/2addr v4, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ladder_total_fight_times"

    move/from16 v4, v32

    invoke-static {v4, v2, v6}, Lcom/sgscq/vpn/handler/p0;->D(ILjava/lang/String;Ljava/util/Map;)V

    const-string v2, "ladder_total_rank_salary"

    invoke-static {v15, v2, v6}, Lcom/sgscq/vpn/handler/p0;->D(ILjava/lang/String;Ljava/util/Map;)V

    const-string v2, "user_honor"

    invoke-static {v3, v2, v6}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v3

    add-int v3, v3, v18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long v2, v14

    invoke-static {v2, v3, v6}, Lcom/sgscq/vpn/p5;->b(JLjava/util/Map;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v5, "is_win"

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    const-string v2, "max_energy"

    const/16 v3, 0x96

    .line 15
    invoke-static {v3, v2, v6}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v3, v26

    .line 16
    invoke-static {v6, v3, v2, v0, v1}, Lcom/sgscq/vpn/p5;->e(Ljava/util/Map;IIJ)V

    if-lez v4, :cond_b

    const/4 v0, 0x2

    invoke-static {v6, v0, v4}, Lcom/sgscq/vpn/handler/m;->o(Ljava/util/Map;II)Lcom/sgscq/vpn/handler/j;

    move-result-object v0

    goto :goto_9

    :cond_b
    invoke-static {}, Lcom/sgscq/vpn/handler/j;->d()Lcom/sgscq/vpn/handler/j;

    move-result-object v0

    :goto_9
    move-object/from16 v1, p2

    invoke-static {v1, v6}, Lcom/sgscq/vpn/handler/y0;->c(Ljava/util/List;Ljava/util/Map;)Lcom/sgscq/vpn/handler/j;

    move-result-object v1

    invoke-static {}, Lcom/sgscq/vpn/handler/p0;->k0()Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v3, "fight_list"

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "win_num"

    invoke-interface {v2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "total_salary"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "total_honor"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "total_coin"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "fight_result_all"

    invoke-interface {v2, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v8, "fight_type"

    invoke-interface {v4, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "salary"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "honor"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "coin"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "user_coin"

    const-string v30, "rank_salary"

    const-string v32, "reward_honor"

    move/from16 v26, v14

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move/from16 v29, v15

    move/from16 v31, v18

    .line 18
    invoke-static/range {v26 .. v32}, Lc/a;->s(ILjava/util/LinkedHashMap;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 19
    invoke-interface {v4, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "drop_info"

    invoke-interface {v4, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v21, "user_exp"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const-string v23, "general_exp"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const-string v25, "rank_salary"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const-string v27, "reward_honor"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const-string v29, "add_list"

    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    filled-new-array/range {v21 .. v30}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v3, v7}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v5, "drop_total_info"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "hunshi"

    const/4 v5, 0x0

    .line 20
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/p0;->v(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v4, "user_info"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, p3

    if-nez v3, :cond_c

    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/p0;->o(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v3

    goto :goto_a

    :cond_c
    move-object/from16 v4, p4

    invoke-static {v3, v4, v6}, Lcom/sgscq/vpn/handler/p0;->t(Lcom/sgscq/vpn/p7;Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v3

    :goto_a
    const-string v4, "ladder_info"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v6, v0}, Lcom/sgscq/vpn/handler/p0;->i(Ljava/util/LinkedHashMap;Ljava/util/Map;Lcom/sgscq/vpn/handler/j;)V

    move-object/from16 v0, v48

    invoke-static {v2, v0}, Lcom/sgscq/vpn/handler/p0;->l(Ljava/util/LinkedHashMap;Lcom/sgscq/vpn/v5;)V

    invoke-static {v1, v2}, Lcom/sgscq/vpn/handler/p0;->m(Lcom/sgscq/vpn/handler/j;Ljava/util/LinkedHashMap;)V

    return-object v2
.end method

.method public static h0(ILjava/util/Map;)Z
    .locals 2

    .line 1
    const-string v0, "info"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/List;

    if-ltz p0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_2

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const-string p1, "evolution_image_status"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static i(Ljava/util/LinkedHashMap;Ljava/util/Map;Lcom/sgscq/vpn/handler/j;)V
    .locals 13

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Player"

    .line 7
    .line 8
    const-string v2, ","

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    array-length v3, v1

    .line 15
    const/4 v4, 0x0

    .line 16
    move v5, v4

    .line 17
    :goto_0
    if-ge v5, v3, :cond_1

    .line 18
    .line 19
    aget-object v6, v1, v5

    .line 20
    .line 21
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    if-nez v7, :cond_0

    .line 30
    .line 31
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string v1, "delta_data"

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    instance-of v5, v3, Ljava/util/Map;

    .line 44
    .line 45
    if-eqz v5, :cond_2

    .line 46
    .line 47
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    check-cast v3, Ljava/util/Map;

    .line 50
    .line 51
    invoke-direct {v5, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 56
    .line 57
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 58
    .line 59
    .line 60
    :goto_1
    iget-boolean v3, p2, Lcom/sgscq/vpn/handler/j;->a:Z

    .line 61
    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    iget-object v3, p2, Lcom/sgscq/vpn/handler/j;->c:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v3, Ljava/util/List;

    .line 67
    .line 68
    const-string v6, "meeting_info"

    .line 69
    .line 70
    invoke-interface {p0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    const-string v6, "meeting_list"

    .line 74
    .line 75
    invoke-interface {p0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    const-string v6, "list"

    .line 79
    .line 80
    invoke-interface {p0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    :cond_3
    iget-boolean v3, p2, Lcom/sgscq/vpn/handler/j;->b:Z

    .line 84
    .line 85
    if-eqz v3, :cond_7

    .line 86
    .line 87
    iget-object p2, p2, Lcom/sgscq/vpn/handler/j;->d:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p2, Ljava/util/Set;

    .line 90
    .line 91
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_7

    .line 100
    .line 101
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Ljava/lang/String;

    .line 106
    .line 107
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    instance-of v7, v6, Ljava/util/Map;

    .line 115
    .line 116
    const-string v8, "add"

    .line 117
    .line 118
    const-string v9, "upd"

    .line 119
    .line 120
    const-string v10, "del"

    .line 121
    .line 122
    if-nez v7, :cond_4

    .line 123
    .line 124
    new-instance v6, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    new-instance v7, Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .line 133
    .line 134
    new-instance v11, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    filled-new-array {v9, v7, v8, v11}, [Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    invoke-static {v10, v6, v7}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    new-array v7, v4, [Ljava/lang/Object;

    .line 148
    .line 149
    invoke-static {v3, v6, v7}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    goto :goto_5

    .line 154
    :cond_4
    check-cast v6, Ljava/util/Map;

    .line 155
    .line 156
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    instance-of v4, v4, Ljava/util/List;

    .line 161
    .line 162
    if-eqz v4, :cond_5

    .line 163
    .line 164
    new-instance v4, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    check-cast v7, Ljava/util/List;

    .line 171
    .line 172
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 173
    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .line 180
    .line 181
    :goto_3
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    instance-of v7, v7, Ljava/util/List;

    .line 186
    .line 187
    if-eqz v7, :cond_6

    .line 188
    .line 189
    new-instance v7, Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    check-cast v6, Ljava/util/List;

    .line 196
    .line 197
    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    .line 202
    .line 203
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .line 205
    .line 206
    :goto_4
    invoke-static {v3, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    new-instance v11, Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .line 214
    .line 215
    new-instance v12, Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .line 219
    .line 220
    filled-new-array {v9, v12, v8, v6}, [Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    invoke-static {v10, v11, v6, p1, v3}, Lc/a;->n(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    filled-new-array {v9, v7, v8, v6}, [Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    invoke-static {v10, v4, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    const/4 v6, 0x0

    .line 237
    new-array v7, v6, [Ljava/lang/Object;

    .line 238
    .line 239
    invoke-static {v3, v4, v7}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    move v4, v6

    .line 244
    :goto_5
    invoke-interface {v5, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_2

    .line 248
    .line 249
    :cond_7
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    if-nez p1, :cond_8

    .line 254
    .line 255
    invoke-interface {p0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 264
    .line 265
    .line 266
    move-result-object p2

    .line 267
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-eqz v0, :cond_9

    .line 272
    .line 273
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    check-cast v0, Ljava/lang/CharSequence;

    .line 278
    .line 279
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-eqz v0, :cond_9

    .line 287
    .line 288
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    goto :goto_6

    .line 292
    :cond_9
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    const-string p2, "cmn_modules"

    .line 297
    .line 298
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    return-void
.end method

.method public static i0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sgscq/vpn/w1;->k1(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sgscq/vpn/handler/p0;->V(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    :cond_0
    const-string v1, ""

    if-nez v0, :cond_2

    sget-object v0, Lcom/sgscq/vpn/handler/p0;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    return-object v1

    :cond_2
    const-string p0, "skill_type"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    return-object p0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public static j(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/Map;

    .line 16
    .line 17
    const-string v1, "equipment_type"

    .line 18
    .line 19
    const-string v2, ""

    .line 20
    .line 21
    const-string v3, "equipment_pos"

    .line 22
    .line 23
    invoke-static {v0, v1, v2, v3}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    const-string v3, "0"

    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_0

    .line 40
    .line 41
    const-string v3, "null"

    .line 42
    .line 43
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-string v3, "pk_id"

    .line 51
    .line 52
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const-string v3, "equipment_"

    .line 68
    .line 69
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    const-string v3, "equipment_id_"

    .line 77
    .line 78
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    const-string v3, "equip_id_"

    .line 86
    .line 87
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    const-string v2, "equipment_level_"

    .line 95
    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const-string v2, "equipment_level"

    .line 101
    .line 102
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    return-void
.end method

.method public static j0(JLjava/util/Map;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/sgscq/vpn/c7;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v2, p0, v0

    .line 8
    .line 9
    if-gtz v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p2}, Lcom/sgscq/vpn/handler/p0;->w(Ljava/util/Map;)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const-string v3, "ladderChallengeTimes"

    .line 17
    .line 18
    invoke-static {v2, v3, p2}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ge v3, v2, :cond_1

    .line 23
    .line 24
    const-string v2, "ladderChallengeRecoverAt"

    .line 25
    .line 26
    invoke-static {v2, p2}, Lcom/sgscq/vpn/handler/p0;->M(Ljava/lang/String;Ljava/util/Map;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    cmp-long v0, v3, v0

    .line 31
    .line 32
    if-gtz v0, :cond_1

    .line 33
    .line 34
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p2, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method public static k(Ljava/util/LinkedHashMap;Ljava/util/Map;IIILjava/util/LinkedHashMap;)V
    .locals 68

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    const-string v3, "init"

    .line 8
    .line 9
    move-object/from16 v4, p0

    .line 10
    .line 11
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    instance-of v4, v3, Ljava/util/Map;

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    check-cast v3, Ljava/util/Map;

    .line 21
    .line 22
    const-string v4, "user_nickname"

    .line 23
    .line 24
    const-string v5, "\u73a9\u5bb6"

    .line 25
    .line 26
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/p0;->x(Ljava/util/Map;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v30

    .line 38
    const/4 v10, 0x0

    .line 39
    const-string v5, "fightPoint"

    .line 40
    .line 41
    invoke-static {v10, v5, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const-string v6, "fighting"

    .line 46
    .line 47
    invoke-static {v5, v6, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v7, "\u5929\u68af\u5bf9\u624b"

    .line 54
    .line 55
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    const-string v7, "nickname"

    .line 66
    .line 67
    invoke-interface {v2, v7, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    const-string v5, "general_id"

    .line 76
    .line 77
    const-string v7, "131001"

    .line 78
    .line 79
    invoke-interface {v2, v5, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v56

    .line 87
    const/4 v15, 0x1

    .line 88
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    const/16 v7, 0x2710

    .line 93
    .line 94
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    sub-int/2addr v7, v5

    .line 99
    const/16 v5, 0x64

    .line 100
    .line 101
    div-int/2addr v7, v5

    .line 102
    const/4 v9, 0x5

    .line 103
    add-int/2addr v7, v9

    .line 104
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    .line 109
    .line 110
    .line 111
    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/handler/p0;->I(I)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    invoke-static {v1, v6, v2}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-static {v10, v3}, Lcom/sgscq/vpn/handler/p0;->h0(ILjava/util/Map;)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    invoke-static {v15, v3}, Lcom/sgscq/vpn/handler/p0;->h0(ILjava/util/Map;)Z

    .line 124
    .line 125
    .line 126
    move-result v44

    .line 127
    const/4 v5, 0x2

    .line 128
    new-array v6, v5, [Ljava/util/Map;

    .line 129
    .line 130
    const-string v5, "nickname"

    .line 131
    .line 132
    const-string v7, "player_name"

    .line 133
    .line 134
    const-string v9, "userName"

    .line 135
    .line 136
    const-string v11, "teamPoint"

    .line 137
    .line 138
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v12

    .line 142
    const-string v13, "fighting"

    .line 143
    .line 144
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v14

    .line 148
    const-string v16, "fight_point"

    .line 149
    .line 150
    move/from16 v67, v15

    .line 151
    .line 152
    move-object/from16 v15, v16

    .line 153
    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v16

    .line 158
    const-string v17, "general_id"

    .line 159
    .line 160
    const-string v19, "general_skin"

    .line 161
    .line 162
    const-string v21, "user_general_skin"

    .line 163
    .line 164
    const-string v23, "teamLeader"

    .line 165
    .line 166
    const-string v25, "team_leader"

    .line 167
    .line 168
    const-string v27, "head"

    .line 169
    .line 170
    const-string v29, "avatar"

    .line 171
    .line 172
    const-string v31, "user_ability"

    .line 173
    .line 174
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v32

    .line 178
    const-string v33, "leadership_num"

    .line 179
    .line 180
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v34

    .line 184
    const-string v35, "leadershipNum"

    .line 185
    .line 186
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v36

    .line 190
    const-string v37, "user_leadership_num"

    .line 191
    .line 192
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v38

    .line 196
    const-string v39, "evolution_image_status"

    .line 197
    .line 198
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 199
    .line 200
    .line 201
    move-result-object v40

    .line 202
    move-object v0, v6

    .line 203
    move-object v6, v4

    .line 204
    move-object v2, v8

    .line 205
    move-object v8, v4

    .line 206
    move/from16 v41, v10

    .line 207
    .line 208
    move-object v10, v4

    .line 209
    move-object/from16 v18, v30

    .line 210
    .line 211
    move-object/from16 v20, v30

    .line 212
    .line 213
    move-object/from16 v22, v30

    .line 214
    .line 215
    move-object/from16 v24, v30

    .line 216
    .line 217
    move-object/from16 v26, v30

    .line 218
    .line 219
    move-object/from16 v28, v30

    .line 220
    .line 221
    filled-new-array/range {v5 .. v40}, [Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    const-string v6, "name"

    .line 226
    .line 227
    invoke-static {v6, v4, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    aput-object v4, v0, v41

    .line 232
    .line 233
    const-string v31, "nickname"

    .line 234
    .line 235
    const-string v33, "player_name"

    .line 236
    .line 237
    const-string v35, "userName"

    .line 238
    .line 239
    const-string v37, "teamPoint"

    .line 240
    .line 241
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    .line 243
    .line 244
    move-result-object v38

    .line 245
    const-string v39, "fighting"

    .line 246
    .line 247
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v40

    .line 251
    const-string v41, "fight_point"

    .line 252
    .line 253
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v42

    .line 257
    const-string v43, "general_id"

    .line 258
    .line 259
    const-string v45, "general_skin"

    .line 260
    .line 261
    const-string v47, "user_general_skin"

    .line 262
    .line 263
    const-string v49, "teamLeader"

    .line 264
    .line 265
    const-string v51, "team_leader"

    .line 266
    .line 267
    const-string v53, "head"

    .line 268
    .line 269
    const-string v55, "avatar"

    .line 270
    .line 271
    const-string v57, "user_ability"

    .line 272
    .line 273
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v58

    .line 277
    const-string v59, "leadership_num"

    .line 278
    .line 279
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v60

    .line 283
    const-string v61, "leadershipNum"

    .line 284
    .line 285
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v62

    .line 289
    const-string v63, "user_leadership_num"

    .line 290
    .line 291
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 292
    .line 293
    .line 294
    move-result-object v64

    .line 295
    const-string v65, "evolution_image_status"

    .line 296
    .line 297
    invoke-static/range {v44 .. v44}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 298
    .line 299
    .line 300
    move-result-object v66

    .line 301
    move-object/from16 v32, v2

    .line 302
    .line 303
    move-object/from16 v34, v2

    .line 304
    .line 305
    move-object/from16 v36, v2

    .line 306
    .line 307
    move-object/from16 v44, v56

    .line 308
    .line 309
    move-object/from16 v46, v56

    .line 310
    .line 311
    move-object/from16 v48, v56

    .line 312
    .line 313
    move-object/from16 v50, v56

    .line 314
    .line 315
    move-object/from16 v52, v56

    .line 316
    .line 317
    move-object/from16 v54, v56

    .line 318
    .line 319
    filled-new-array/range {v31 .. v66}, [Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-static {v6, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    aput-object v1, v0, v67

    .line 328
    .line 329
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    const-string v1, "info"

    .line 334
    .line 335
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    return-void
.end method

.method public static k0()Ljava/util/LinkedHashMap;
    .locals 9

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "code"

    const-string v3, "result"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "msg"

    const-string v6, "success"

    const-string v7, "error_code"

    move-object v2, v0

    move-object v8, v0

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ret"

    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public static l(Ljava/util/LinkedHashMap;Lcom/sgscq/vpn/v5;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/sgscq/vpn/v5;->r:Ljava/util/Map;

    .line 5
    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return-void

    .line 9
    :cond_1
    const-string v0, "EvolutionInfo"

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_4

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    const-string v0, "cmn"

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    instance-of v2, v1, Ljava/util/Map;

    .line 31
    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    check-cast v1, Ljava/util/Map;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :goto_0
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    .line 54
    .line 55
    const-string p1, "update_list"

    .line 56
    .line 57
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    new-instance p1, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v0, "del_list"

    .line 66
    .line 67
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    const-string p1, "evolution_info"

    .line 71
    .line 72
    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    :cond_4
    :goto_1
    return-void
.end method

.method public static l0(Ljava/util/Map;)I
    .locals 5

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const-string v1, "team_position"

    .line 8
    .line 9
    const-string v2, "general_position"

    .line 10
    .line 11
    const-string v3, "position"

    .line 12
    .line 13
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    const/4 v4, 0x3

    .line 20
    if-ge v3, v4, :cond_2

    .line 21
    .line 22
    aget-object v4, v1, v3

    .line 23
    .line 24
    invoke-static {p0, v4, v2}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-lez v4, :cond_1

    .line 29
    .line 30
    return v4

    .line 31
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return v0
.end method

.method public static m(Lcom/sgscq/vpn/handler/j;Ljava/util/LinkedHashMap;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/handler/j;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "cmn_modules"

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, ","

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    array-length v4, v2

    .line 33
    const/4 v5, 0x0

    .line 34
    :goto_0
    if-ge v5, v4, :cond_2

    .line 35
    .line 36
    aget-object v6, v2, v5

    .line 37
    .line 38
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-nez v7, :cond_1

    .line 47
    .line 48
    const-string v7, "TeamGeneral"

    .line 49
    .line 50
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-nez v7, :cond_1

    .line 55
    .line 56
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const-string v2, "delta_data"

    .line 63
    .line 64
    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    instance-of v5, v4, Ljava/util/Map;

    .line 69
    .line 70
    if-eqz v5, :cond_3

    .line 71
    .line 72
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 73
    .line 74
    check-cast v4, Ljava/util/Map;

    .line 75
    .line 76
    invoke-direct {v5, v4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 81
    .line 82
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-virtual {p0, v5, v0}, Lcom/sgscq/vpn/handler/j;->a(Ljava/util/Map;Ljava/util/AbstractCollection;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/handler/j;->b(Ljava/util/Map;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-nez p0, :cond_4

    .line 96
    .line 97
    invoke-interface {p1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_5

    .line 114
    .line 115
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Ljava/lang/CharSequence;

    .line 120
    .line 121
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_5

    .line 129
    .line 130
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_5
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    :goto_3
    return-void
.end method

.method public static m0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static n(IIIIIIIZLjava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;
    .locals 17

    move-object/from16 v0, p8

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "success"

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "is_win"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "fight_type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "old_rank"

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "new_rank"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "rank_change"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "rounds"

    .line 1
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/List;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "pre"

    const-string v8, "params"

    const-string v9, "skill"

    if-eqz v4, :cond_7

    move-object v10, v3

    check-cast v10, Ljava/util/List;

    .line 2
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v12, v6

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    instance-of v14, v13, Ljava/util/Map;

    if-nez v14, :cond_1

    goto :goto_0

    :cond_1
    check-cast v13, Ljava/util/Map;

    const-string v14, "Round"

    .line 3
    invoke-static {v13, v9, v14}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    instance-of v14, v13, Ljava/util/Map;

    if-nez v14, :cond_3

    goto :goto_0

    :cond_3
    check-cast v13, Ljava/util/Map;

    invoke-interface {v13, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    instance-of v14, v13, Ljava/util/Map;

    if-nez v14, :cond_4

    goto :goto_0

    :cond_4
    check-cast v13, Ljava/util/Map;

    const-string v14, "roundCur"

    .line 5
    invoke-static {v13, v14, v6}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v13

    if-le v13, v12, :cond_0

    move v12, v13

    goto :goto_0

    :cond_5
    if-lez v12, :cond_6

    move v5, v12

    goto :goto_1

    .line 6
    :cond_6
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_7
    :goto_1
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v11, "init"

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Ljava/util/Map;

    if-eqz v12, :cond_8

    check-cast v11, Ljava/util/Map;

    const-string v12, "cards"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "cards_size0"

    const-string v14, "0"

    .line 7
    invoke-static {v11, v13, v14, v6}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v13

    const-string v15, "cards_size1"

    invoke-static {v11, v15, v14, v6}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    const-string v15, "backups_size0"

    move-object/from16 p0, v2

    const/4 v2, 0x0

    invoke-static {v11, v15, v14, v2}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    .line 8
    instance-of v14, v12, Ljava/util/List;

    if-eqz v14, :cond_9

    check-cast v12, Ljava/util/List;

    invoke-static {v2, v13, v12, v10}, Lcom/sgscq/vpn/handler/p0;->b(IILjava/util/List;Ljava/util/LinkedHashMap;)V

    add-int/2addr v13, v6

    invoke-static {v13, v11, v12, v10}, Lcom/sgscq/vpn/handler/p0;->b(IILjava/util/List;Ljava/util/LinkedHashMap;)V

    goto :goto_2

    :cond_8
    move-object/from16 p0, v2

    :cond_9
    :goto_2
    const-wide/16 v11, 0x0

    if-eqz v4, :cond_f

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_a

    check-cast v3, Ljava/util/Map;

    .line 9
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v6, v4, Ljava/util/Map;

    if-nez v6, :cond_b

    goto :goto_3

    :cond_b
    check-cast v4, Ljava/util/Map;

    const-string v6, "from"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v10, v13, v6}, Lcom/sgscq/vpn/handler/p0;->f(Ljava/util/LinkedHashMap;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v6, "to"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v10, v13, v6}, Lcom/sgscq/vpn/handler/p0;->f(Ljava/util/LinkedHashMap;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "enter"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_3

    :cond_c
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/Map;

    if-nez v4, :cond_d

    goto :goto_3

    :cond_d
    check-cast v3, Ljava/util/Map;

    const-string v4, "leaveIdx"

    const/4 v6, -0x1

    .line 11
    invoke-static {v3, v4, v6}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v4

    const-string v13, "backupIdx"

    invoke-static {v3, v13, v6}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v3

    if-ltz v4, :cond_a

    if-ltz v3, :cond_a

    if-ne v4, v3, :cond_e

    goto :goto_3

    .line 12
    :cond_e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 13
    :cond_f
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_10
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v6, v6, v11

    if-lez v6, :cond_10

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_11
    if-gtz v2, :cond_12

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    goto :goto_5

    :cond_12
    const/4 v3, 0x1

    .line 14
    :goto_5
    invoke-static {v3, v4, v2}, Lcom/sgscq/vpn/battle/BattleStarCalculator;->calculate(ZII)I

    move-result v3

    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "rounds"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "residue_team_num"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "residue_team_percent"

    invoke-static {v4, v2}, Lcom/sgscq/vpn/battle/BattleStarCalculator;->ceilPercent(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "star_level"

    invoke-static {v4, v3, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    if-eqz p7, :cond_13

    .line 16
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result v3

    goto :goto_6

    :cond_13
    const/4 v3, 0x0

    :goto_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "dungeon_starLevel"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "salary"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "honor"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "coin"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "player_exp"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "user_exp"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "user_coin"

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "rank_salary"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "reward_honor"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "user_exp"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "general_exp"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "rank_salary"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "reward_honor"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "add_list"

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    filled-new-array/range {v7 .. v16}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v5

    const-string v6, "drop_info"

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "defender"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/util/Map;

    if-eqz v6, :cond_14

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v6, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const-string v0, "player_info"

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "up_rank"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "rounds"

    move-object/from16 v5, p0

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "residue_team_num"

    const-string v7, "residue_team_num"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "residue_team_percent"

    const-string v9, "residue_team_percent"

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v9, "up_rank"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 p1, v3

    move-object/from16 p2, v5

    move-object/from16 p3, v6

    move-object/from16 p4, v7

    move-object/from16 p5, v8

    move-object/from16 p6, v2

    move-object/from16 p7, v9

    move-object/from16 p8, v10

    filled-new-array/range {p1 .. p8}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v2, "fight_calculate_info"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static o(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 10

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/handler/p0;->P(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x270f

    .line 5
    .line 6
    const-string v1, "ladder_rank"

    .line 7
    .line 8
    invoke-static {v0, v1, p0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    const-string v1, "ladder_best_rank"

    .line 25
    .line 26
    invoke-static {v0, v1, p0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v3, "best_rank"

    .line 35
    .line 36
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->T0(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v3, "rank_name"

    .line 44
    .line 45
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->f1(I)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v3, "cur_rank_salary"

    .line 57
    .line 58
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    const/16 v1, 0x64

    .line 62
    .line 63
    const/16 v3, 0xa

    .line 64
    .line 65
    if-gt v0, v3, :cond_0

    .line 66
    .line 67
    const/16 v4, 0x5dc

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const/16 v4, 0x3e8

    .line 71
    .line 72
    if-gt v0, v1, :cond_1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    if-gt v0, v4, :cond_2

    .line 76
    .line 77
    const/16 v4, 0x1f4

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const/16 v4, 0xc8

    .line 81
    .line 82
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    const-string v5, "next_rank_salary"

    .line 87
    .line 88
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    const/4 v4, 0x0

    .line 92
    const-string v5, "ladderRankSalary"

    .line 93
    .line 94
    invoke-static {v4, v5, p0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    const-string v6, "ladder_rank_salary"

    .line 103
    .line 104
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    invoke-static {p0}, Lcom/sgscq/vpn/handler/p0;->w(Ljava/util/Map;)I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    const-string v6, "total_challenge_num"

    .line 112
    .line 113
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    const-string v6, "ladderChallengeTimes"

    .line 121
    .line 122
    invoke-static {v5, v6, p0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    const-string v6, "challenging_num"

    .line 131
    .line 132
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    new-instance v5, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .line 139
    .line 140
    new-instance v6, Ljava/util/HashSet;

    .line 141
    .line 142
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 143
    .line 144
    .line 145
    const/4 v7, 0x1

    .line 146
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    move v8, v7

    .line 151
    :goto_1
    if-gt v8, v3, :cond_3

    .line 152
    .line 153
    invoke-static {v5, v6, p0, v0, v8}, Lcom/sgscq/vpn/handler/p0;->c(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/util/Map;II)V

    .line 154
    .line 155
    .line 156
    add-int/lit8 v8, v8, 0x1

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .line 163
    .line 164
    :goto_2
    const/4 v9, 0x5

    .line 165
    if-lt v1, v9, :cond_5

    .line 166
    .line 167
    sub-int v9, v0, v1

    .line 168
    .line 169
    if-le v9, v3, :cond_4

    .line 170
    .line 171
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    :cond_4
    add-int/lit8 v1, v1, -0x5

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_5
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-ge v4, v1, :cond_6

    .line 186
    .line 187
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    check-cast v1, Ljava/lang/Integer;

    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    invoke-static {v5, v6, p0, v0, v1}, Lcom/sgscq/vpn/handler/p0;->c(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/util/Map;II)V

    .line 198
    .line 199
    .line 200
    add-int/lit8 v4, v4, 0x1

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_6
    invoke-static {v5, v6, p0, v0, v0}, Lcom/sgscq/vpn/handler/p0;->c(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/util/Map;II)V

    .line 204
    .line 205
    .line 206
    :goto_4
    if-gt v7, v9, :cond_7

    .line 207
    .line 208
    add-int v1, v0, v7

    .line 209
    .line 210
    invoke-static {v5, v6, p0, v0, v1}, Lcom/sgscq/vpn/handler/p0;->c(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/util/Map;II)V

    .line 211
    .line 212
    .line 213
    add-int/lit8 v7, v7, 0x1

    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_7
    const-string p0, "ladder_team"

    .line 217
    .line 218
    invoke-interface {v2, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    return-object v2
.end method

.method public static p(IIIILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 23

    .line 1
    move-object/from16 v0, p5

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v2}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static/range {p2 .. p4}, Lcom/sgscq/vpn/handler/p0;->S(IILjava/lang/String;)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_5

    .line 26
    .line 27
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Lcom/sgscq/vpn/handler/o0;

    .line 32
    .line 33
    iget-object v5, v4, Lcom/sgscq/vpn/handler/o0;->a:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v2, v5}, Lcom/sgscq/vpn/w1;->z0(Ljava/lang/String;)Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-static {v5, v6}, Lcom/sgscq/vpn/handler/p0;->z(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-eqz v7, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v8, "ladder_eq_"

    .line 53
    .line 54
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    move/from16 v8, p0

    .line 58
    .line 59
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v9, "_"

    .line 63
    .line 64
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    add-int/lit8 v10, p1, 0x1

    .line 68
    .line 69
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-boolean v9, v4, Lcom/sgscq/vpn/handler/o0;->d:Z

    .line 76
    .line 77
    if-eqz v9, :cond_1

    .line 78
    .line 79
    const-string v10, "fallback_"

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    const-string v10, ""

    .line 83
    .line 84
    :goto_1
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    const-string v10, "pk_id"

    .line 95
    .line 96
    const-string v11, "general_pk_id"

    .line 97
    .line 98
    invoke-static {v10, v7, v11, v0}, Lc/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    const-string v10, "general_id"

    .line 103
    .line 104
    invoke-interface {v7, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    const-string v12, "user_general_id"

    .line 108
    .line 109
    invoke-interface {v7, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    const-string v13, "is_wear"

    .line 113
    .line 114
    const-string v15, "1"

    .line 115
    .line 116
    invoke-interface {v7, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    const-string v14, "wear"

    .line 120
    .line 121
    invoke-interface {v7, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-object/from16 p2, v3

    .line 125
    .line 126
    iget v3, v4, Lcom/sgscq/vpn/handler/o0;->b:I

    .line 127
    .line 128
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    move-object/from16 v19, v1

    .line 133
    .line 134
    const-string v1, "level"

    .line 135
    .line 136
    invoke-interface {v7, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    move-object/from16 p3, v6

    .line 144
    .line 145
    const-string v6, "equipment_level"

    .line 146
    .line 147
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    iget v4, v4, Lcom/sgscq/vpn/handler/o0;->c:I

    .line 151
    .line 152
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    move/from16 p4, v9

    .line 157
    .line 158
    const-string v9, "refine_level"

    .line 159
    .line 160
    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    const/4 v8, 0x0

    .line 164
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    move-object/from16 v20, v9

    .line 169
    .line 170
    const-string v9, "refine_exp"

    .line 171
    .line 172
    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    const-string v8, "get_time"

    .line 176
    .line 177
    invoke-interface {v7, v8, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-object/from16 v21, v8

    .line 181
    .line 182
    const-string v8, "exp"

    .line 183
    .line 184
    move-object/from16 v22, v9

    .line 185
    .line 186
    const-string v9, "0"

    .line 187
    .line 188
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v5, v7}, Lcom/sgscq/vpn/w1;->R(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 192
    .line 193
    .line 194
    invoke-interface {v7, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    invoke-interface {v7, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    invoke-interface {v7, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    invoke-interface {v7, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-object v12, v7

    .line 207
    move-object v13, v14

    .line 208
    move-object v14, v15

    .line 209
    move-object v5, v15

    .line 210
    move v15, v3

    .line 211
    move-object/from16 v16, v1

    .line 212
    .line 213
    move/from16 v17, v3

    .line 214
    .line 215
    move-object/from16 v18, v6

    .line 216
    .line 217
    invoke-static/range {v12 .. v18}, Lc/a;->z(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    move-object/from16 v3, v20

    .line 225
    .line 226
    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    const/4 v1, 0x0

    .line 230
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    move-object/from16 v4, v22

    .line 235
    .line 236
    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-object/from16 v3, v21

    .line 240
    .line 241
    invoke-interface {v7, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    if-eqz p4, :cond_4

    .line 248
    .line 249
    const-string v3, "equipment_pos"

    .line 250
    .line 251
    move-object/from16 v4, p3

    .line 252
    .line 253
    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    const-string v3, "equipment_type"

    .line 257
    .line 258
    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    invoke-static {v4, v1}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-lez v1, :cond_4

    .line 266
    .line 267
    const/4 v3, 0x5

    .line 268
    if-lt v1, v3, :cond_2

    .line 269
    .line 270
    goto :goto_3

    .line 271
    :cond_2
    const-string v3, "grade"

    .line 272
    .line 273
    invoke-interface {v7, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    sget-object v3, Lcom/sgscq/vpn/handler/p0;->b:[Ljava/lang/String;

    .line 277
    .line 278
    aget-object v3, v3, v1

    .line 279
    .line 280
    const-string v5, "sell_type"

    .line 281
    .line 282
    invoke-interface {v7, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    sget-object v3, Lcom/sgscq/vpn/handler/p0;->c:[Ljava/lang/String;

    .line 286
    .line 287
    aget-object v1, v3, v1

    .line 288
    .line 289
    const-string v3, "upgrade_coin_type"

    .line 290
    .line 291
    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    const-string v1, "refine_upgrade_exp_type"

    .line 295
    .line 296
    const-string v3, "xiashen_jinglian"

    .line 297
    .line 298
    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    const-string v1, "refine_eaten_exp_type"

    .line 302
    .line 303
    const-string v3, "xiashencailiao_jinglian"

    .line 304
    .line 305
    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    const-string v1, "refine_bonus_type"

    .line 309
    .line 310
    const-string v3, "xiashen_jinglian_up"

    .line 311
    .line 312
    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    const-string v1, "3"

    .line 316
    .line 317
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    const-string v3, "fighting"

    .line 322
    .line 323
    if-eqz v1, :cond_3

    .line 324
    .line 325
    const-string v1, "810"

    .line 326
    .line 327
    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    const-string v1, "630.00"

    .line 331
    .line 332
    goto :goto_2

    .line 333
    :cond_3
    const-string v1, "405"

    .line 334
    .line 335
    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    const-string v1, "135.00"

    .line 339
    .line 340
    :goto_2
    const-string v3, "effect_value"

    .line 341
    .line 342
    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    :cond_4
    :goto_3
    move-object/from16 v1, v19

    .line 346
    .line 347
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-object/from16 v3, p2

    .line 351
    .line 352
    goto/16 :goto_0

    .line 353
    .line 354
    :cond_5
    return-object v1
.end method

.method public static q(ILcom/sgscq/vpn/config/e;)Ljava/util/ArrayList;
    .locals 28

    .line 1
    move/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/p0;->I(I)I

    .line 6
    .line 7
    .line 8
    move-result v8

    .line 9
    new-instance v9, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v10, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v11, Ljava/util/HashSet;

    .line 20
    .line 21
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    iget v0, v7, Lcom/sgscq/vpn/config/e;->d:I

    .line 26
    .line 27
    if-ge v1, v0, :cond_28

    .line 28
    .line 29
    new-instance v13, Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    div-int v0, v8, v0

    .line 40
    .line 41
    mul-int/lit8 v3, v6, 0x1f

    .line 42
    .line 43
    iget v4, v7, Lcom/sgscq/vpn/config/e;->a:I

    .line 44
    .line 45
    mul-int/lit8 v5, v4, 0x7

    .line 46
    .line 47
    add-int/2addr v5, v3

    .line 48
    add-int/2addr v5, v1

    .line 49
    const-string v3, ""

    .line 50
    .line 51
    move-object v15, v3

    .line 52
    const/4 v14, 0x0

    .line 53
    :goto_1
    const/16 v12, 0x7d0

    .line 54
    .line 55
    if-ge v14, v12, :cond_7

    .line 56
    .line 57
    add-int v17, v5, v14

    .line 58
    .line 59
    invoke-static/range {v17 .. v17}, Lcom/sgscq/vpn/p5;->i1(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-eqz v2, :cond_5

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v17

    .line 69
    if-nez v17, :cond_5

    .line 70
    .line 71
    invoke-virtual {v10, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v17

    .line 75
    if-eqz v17, :cond_0

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_0
    invoke-static {v2}, Lcom/sgscq/vpn/handler/p0;->F(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v17

    .line 82
    if-nez v17, :cond_1

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_1
    invoke-static {v2}, Lcom/sgscq/vpn/handler/p0;->O(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v18

    .line 93
    if-eqz v18, :cond_2

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_2
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v18

    .line 100
    if-eqz v18, :cond_3

    .line 101
    .line 102
    move-object v15, v2

    .line 103
    :cond_3
    move-object/from16 v18, v3

    .line 104
    .line 105
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 106
    .line 107
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result v19

    .line 114
    if-eqz v19, :cond_4

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_4
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    :goto_2
    invoke-static {v2, v3}, Lcom/sgscq/vpn/handler/p0;->T(Ljava/lang/String;Ljava/util/LinkedHashSet;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-nez v3, :cond_6

    .line 129
    .line 130
    move-object v15, v2

    .line 131
    goto :goto_6

    .line 132
    :cond_5
    :goto_3
    move-object/from16 v18, v3

    .line 133
    .line 134
    :cond_6
    add-int/lit8 v14, v14, 0x1

    .line 135
    .line 136
    move-object/from16 v3, v18

    .line 137
    .line 138
    const/4 v2, 0x1

    .line 139
    goto :goto_1

    .line 140
    :cond_7
    move-object/from16 v18, v3

    .line 141
    .line 142
    move v3, v12

    .line 143
    const/4 v2, 0x0

    .line 144
    :goto_4
    if-ge v2, v3, :cond_c

    .line 145
    .line 146
    add-int v3, v5, v2

    .line 147
    .line 148
    invoke-static {v3}, Lcom/sgscq/vpn/p5;->i1(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    if-eqz v3, :cond_b

    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result v12

    .line 158
    if-nez v12, :cond_b

    .line 159
    .line 160
    invoke-virtual {v10, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v12

    .line 164
    if-eqz v12, :cond_8

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_8
    invoke-static {v3}, Lcom/sgscq/vpn/handler/p0;->F(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v12

    .line 171
    if-nez v12, :cond_9

    .line 172
    .line 173
    goto :goto_5

    .line 174
    :cond_9
    invoke-static {v3}, Lcom/sgscq/vpn/handler/p0;->O(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v12

    .line 178
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 179
    .line 180
    .line 181
    move-result v12

    .line 182
    if-eqz v12, :cond_a

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_a
    invoke-static {v3}, Lcom/sgscq/vpn/handler/p0;->Q(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 186
    .line 187
    .line 188
    move-result-object v12

    .line 189
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 190
    .line 191
    .line 192
    move-result v12

    .line 193
    if-nez v12, :cond_b

    .line 194
    .line 195
    move-object v15, v3

    .line 196
    goto :goto_6

    .line 197
    :cond_b
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 198
    .line 199
    const/16 v3, 0x7d0

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_c
    :goto_6
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-eqz v2, :cond_d

    .line 207
    .line 208
    invoke-static {v6, v4, v1}, Lcom/sgscq/vpn/handler/p0;->J(III)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    move-object v15, v2

    .line 213
    :cond_d
    invoke-virtual {v10, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 217
    .line 218
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-static {v15}, Lcom/sgscq/vpn/handler/p0;->O(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    if-eqz v5, :cond_e

    .line 230
    .line 231
    goto :goto_7

    .line 232
    :cond_e
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    :goto_7
    invoke-static {v15, v2}, Lcom/sgscq/vpn/handler/p0;->T(Ljava/lang/String;Ljava/util/LinkedHashSet;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    if-eqz v3, :cond_10

    .line 240
    .line 241
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    if-nez v5, :cond_10

    .line 246
    .line 247
    const-string v5, "fate_skill_id"

    .line 248
    .line 249
    invoke-interface {v13, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    invoke-static {v3}, Lcom/sgscq/vpn/handler/p0;->i0(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    if-eqz v5, :cond_f

    .line 261
    .line 262
    goto :goto_8

    .line 263
    :cond_f
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    :cond_10
    :goto_8
    const/4 v3, 0x4

    .line 267
    new-array v5, v3, [D

    .line 268
    .line 269
    fill-array-data v5, :array_0

    .line 270
    .line 271
    .line 272
    const/4 v12, 0x0

    .line 273
    invoke-static {v12}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 274
    .line 275
    .line 276
    move-result-object v12

    .line 277
    const/16 v14, 0x64

    .line 278
    .line 279
    iget v3, v7, Lcom/sgscq/vpn/config/e;->c:I

    .line 280
    .line 281
    invoke-static {v3, v14, v15}, Lcom/sgscq/vpn/handler/p0;->S(IILjava/lang/String;)Ljava/util/ArrayList;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 290
    .line 291
    .line 292
    move-result v14

    .line 293
    const/16 v20, 0x2

    .line 294
    .line 295
    const/16 v21, 0x3

    .line 296
    .line 297
    if-eqz v14, :cond_18

    .line 298
    .line 299
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v14

    .line 303
    check-cast v14, Lcom/sgscq/vpn/handler/o0;

    .line 304
    .line 305
    move-object/from16 v22, v3

    .line 306
    .line 307
    iget-object v3, v14, Lcom/sgscq/vpn/handler/o0;->a:Ljava/lang/String;

    .line 308
    .line 309
    move/from16 v23, v8

    .line 310
    .line 311
    invoke-virtual {v12, v3}, Lcom/sgscq/vpn/w1;->z0(Ljava/lang/String;)Ljava/util/Map;

    .line 312
    .line 313
    .line 314
    move-result-object v8

    .line 315
    if-nez v8, :cond_11

    .line 316
    .line 317
    goto :goto_a

    .line 318
    :cond_11
    invoke-static {v3, v8}, Lcom/sgscq/vpn/handler/p0;->z(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 323
    .line 324
    .line 325
    move-result v24

    .line 326
    if-eqz v24, :cond_12

    .line 327
    .line 328
    :goto_a
    move-object/from16 v3, v22

    .line 329
    .line 330
    move/from16 v8, v23

    .line 331
    .line 332
    goto :goto_9

    .line 333
    :cond_12
    move-object/from16 v24, v12

    .line 334
    .line 335
    const-string v12, "3"

    .line 336
    .line 337
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v12

    .line 341
    if-eqz v12, :cond_13

    .line 342
    .line 343
    const/4 v3, 0x0

    .line 344
    goto :goto_b

    .line 345
    :cond_13
    const-string v12, "1"

    .line 346
    .line 347
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v12

    .line 351
    if-eqz v12, :cond_14

    .line 352
    .line 353
    const/4 v3, 0x1

    .line 354
    goto :goto_b

    .line 355
    :cond_14
    const-string v12, "2"

    .line 356
    .line 357
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v12

    .line 361
    if-eqz v12, :cond_15

    .line 362
    .line 363
    move/from16 v3, v20

    .line 364
    .line 365
    goto :goto_b

    .line 366
    :cond_15
    const-string v12, "4"

    .line 367
    .line 368
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    if-eqz v3, :cond_16

    .line 373
    .line 374
    move/from16 v3, v21

    .line 375
    .line 376
    goto :goto_b

    .line 377
    :cond_16
    const/4 v3, -0x1

    .line 378
    :goto_b
    if-gez v3, :cond_17

    .line 379
    .line 380
    move-object v12, v9

    .line 381
    goto :goto_c

    .line 382
    :cond_17
    const-string v12, "effect_value"

    .line 383
    .line 384
    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v12

    .line 388
    const-wide/16 v6, 0x0

    .line 389
    .line 390
    invoke-static {v12, v6, v7}, Lcom/sgscq/vpn/handler/p0;->y(Ljava/lang/Object;D)D

    .line 391
    .line 392
    .line 393
    move-result-wide v20

    .line 394
    const-string v12, "effect_value_step"

    .line 395
    .line 396
    const-string v6, "0"

    .line 397
    .line 398
    invoke-interface {v8, v12, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v6

    .line 402
    const-string v7, "effect_step"

    .line 403
    .line 404
    invoke-interface {v8, v7, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v6

    .line 408
    const-wide/16 v7, 0x0

    .line 409
    .line 410
    invoke-static {v6, v7, v8}, Lcom/sgscq/vpn/handler/p0;->y(Ljava/lang/Object;D)D

    .line 411
    .line 412
    .line 413
    move-result-wide v6

    .line 414
    aget-wide v25, v5, v3

    .line 415
    .line 416
    iget v8, v14, Lcom/sgscq/vpn/handler/o0;->b:I

    .line 417
    .line 418
    const/4 v12, 0x1

    .line 419
    sub-int/2addr v8, v12

    .line 420
    const/4 v12, 0x0

    .line 421
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    .line 422
    .line 423
    .line 424
    move-result v8

    .line 425
    move-object v12, v9

    .line 426
    int-to-double v8, v8

    .line 427
    mul-double/2addr v8, v6

    .line 428
    add-double v8, v8, v20

    .line 429
    .line 430
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    .line 431
    .line 432
    .line 433
    move-result-wide v6

    .line 434
    add-double v6, v6, v25

    .line 435
    .line 436
    aput-wide v6, v5, v3

    .line 437
    .line 438
    :goto_c
    move/from16 v6, p0

    .line 439
    .line 440
    move-object/from16 v7, p1

    .line 441
    .line 442
    move-object v9, v12

    .line 443
    move-object/from16 v3, v22

    .line 444
    .line 445
    move/from16 v8, v23

    .line 446
    .line 447
    move-object/from16 v12, v24

    .line 448
    .line 449
    goto/16 :goto_9

    .line 450
    .line 451
    :cond_18
    move/from16 v23, v8

    .line 452
    .line 453
    move-object v12, v9

    .line 454
    const-string v3, "slot"

    .line 455
    .line 456
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 457
    .line 458
    .line 459
    move-result-object v6

    .line 460
    invoke-interface {v13, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    const-string v3, "general_id"

    .line 464
    .line 465
    invoke-interface {v13, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    const/16 v3, 0x5a

    .line 469
    .line 470
    if-lt v4, v3, :cond_19

    .line 471
    .line 472
    const/4 v6, 0x5

    .line 473
    goto :goto_d

    .line 474
    :cond_19
    const/16 v6, 0x46

    .line 475
    .line 476
    if-lt v4, v6, :cond_1a

    .line 477
    .line 478
    const/4 v6, 0x4

    .line 479
    goto :goto_d

    .line 480
    :cond_1a
    const/16 v6, 0x2d

    .line 481
    .line 482
    if-lt v4, v6, :cond_1b

    .line 483
    .line 484
    move/from16 v6, v20

    .line 485
    .line 486
    goto :goto_d

    .line 487
    :cond_1b
    const/16 v6, 0x14

    .line 488
    .line 489
    if-lt v4, v6, :cond_1c

    .line 490
    .line 491
    const/4 v6, 0x1

    .line 492
    goto :goto_d

    .line 493
    :cond_1c
    const/4 v6, 0x0

    .line 494
    :goto_d
    if-ge v1, v6, :cond_26

    .line 495
    .line 496
    new-instance v6, Ljava/util/HashSet;

    .line 497
    .line 498
    invoke-direct {v6, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 499
    .line 500
    .line 501
    invoke-interface {v6, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 502
    .line 503
    .line 504
    move/from16 v7, p0

    .line 505
    .line 506
    mul-int/lit8 v8, v7, 0x25

    .line 507
    .line 508
    mul-int/lit8 v4, v4, 0xb

    .line 509
    .line 510
    add-int/2addr v4, v8

    .line 511
    mul-int/lit8 v8, v1, 0x2

    .line 512
    .line 513
    add-int/2addr v8, v4

    .line 514
    const/4 v4, 0x1

    .line 515
    add-int/2addr v8, v4

    .line 516
    const/4 v4, 0x0

    .line 517
    :goto_e
    const/16 v9, 0x7d0

    .line 518
    .line 519
    if-ge v4, v9, :cond_25

    .line 520
    .line 521
    add-int v14, v8, v4

    .line 522
    .line 523
    invoke-static {v14}, Lcom/sgscq/vpn/p5;->i1(I)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v14

    .line 527
    if-eqz v14, :cond_24

    .line 528
    .line 529
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 530
    .line 531
    .line 532
    move-result v17

    .line 533
    if-nez v17, :cond_24

    .line 534
    .line 535
    invoke-virtual {v6, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 536
    .line 537
    .line 538
    move-result v17

    .line 539
    if-eqz v17, :cond_1d

    .line 540
    .line 541
    goto :goto_10

    .line 542
    :cond_1d
    invoke-static {v14}, Lcom/sgscq/vpn/handler/p0;->F(Ljava/lang/String;)Z

    .line 543
    .line 544
    .line 545
    move-result v17

    .line 546
    if-nez v17, :cond_1e

    .line 547
    .line 548
    goto :goto_10

    .line 549
    :cond_1e
    sget-object v9, Lcom/sgscq/vpn/handler/p0;->e:Ljava/util/LinkedHashMap;

    .line 550
    .line 551
    invoke-interface {v9, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    move-result v9

    .line 555
    if-eqz v9, :cond_1f

    .line 556
    .line 557
    goto :goto_10

    .line 558
    :cond_1f
    invoke-static {v14}, Lcom/sgscq/vpn/handler/p0;->O(Ljava/lang/String;)Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v9

    .line 562
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 563
    .line 564
    .line 565
    move-result v19

    .line 566
    if-eqz v19, :cond_20

    .line 567
    .line 568
    goto :goto_10

    .line 569
    :cond_20
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 570
    .line 571
    .line 572
    move-result v19

    .line 573
    if-nez v19, :cond_21

    .line 574
    .line 575
    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    move-result v9

    .line 579
    if-eqz v9, :cond_21

    .line 580
    .line 581
    const/4 v9, 0x1

    .line 582
    goto :goto_f

    .line 583
    :cond_21
    const/4 v9, 0x0

    .line 584
    :goto_f
    if-eqz v9, :cond_22

    .line 585
    .line 586
    goto :goto_10

    .line 587
    :cond_22
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    .line 588
    .line 589
    .line 590
    move-result v9

    .line 591
    if-eqz v9, :cond_23

    .line 592
    .line 593
    move-object/from16 v18, v14

    .line 594
    .line 595
    :cond_23
    invoke-static {v14}, Lcom/sgscq/vpn/handler/p0;->Q(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 596
    .line 597
    .line 598
    move-result-object v9

    .line 599
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 600
    .line 601
    .line 602
    move-result v9

    .line 603
    if-nez v9, :cond_24

    .line 604
    .line 605
    goto :goto_11

    .line 606
    :cond_24
    :goto_10
    add-int/lit8 v4, v4, 0x1

    .line 607
    .line 608
    goto :goto_e

    .line 609
    :cond_25
    move-object/from16 v14, v18

    .line 610
    .line 611
    :goto_11
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 612
    .line 613
    .line 614
    move-result v2

    .line 615
    if-nez v2, :cond_27

    .line 616
    .line 617
    const-string v2, "deputy_general_id"

    .line 618
    .line 619
    invoke-interface {v13, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v11, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    goto :goto_12

    .line 626
    :cond_26
    move/from16 v7, p0

    .line 627
    .line 628
    :cond_27
    :goto_12
    move-object/from16 v6, p1

    .line 629
    .line 630
    iget v2, v6, Lcom/sgscq/vpn/config/e;->b:I

    .line 631
    .line 632
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 633
    .line 634
    .line 635
    move-result-object v4

    .line 636
    const-string v8, "level"

    .line 637
    .line 638
    invoke-interface {v13, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    const-string v4, "fighting"

    .line 642
    .line 643
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 644
    .line 645
    .line 646
    move-result-object v8

    .line 647
    invoke-interface {v13, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    div-int/lit8 v4, v0, 0x8

    .line 651
    .line 652
    mul-int/lit8 v8, v2, 0x8

    .line 653
    .line 654
    add-int/2addr v8, v4

    .line 655
    mul-int/lit8 v4, v1, 0x50

    .line 656
    .line 657
    add-int/2addr v4, v8

    .line 658
    const/16 v8, 0x258

    .line 659
    .line 660
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    .line 661
    .line 662
    .line 663
    move-result v4

    .line 664
    int-to-double v8, v4

    .line 665
    const/4 v14, 0x0

    .line 666
    aget-wide v16, v5, v14

    .line 667
    .line 668
    add-double v8, v8, v16

    .line 669
    .line 670
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 671
    .line 672
    .line 673
    move-result-object v4

    .line 674
    const-string v8, "hp"

    .line 675
    .line 676
    invoke-interface {v13, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    div-int/lit8 v4, v0, 0x2d

    .line 680
    .line 681
    mul-int/lit8 v8, v2, 0x2

    .line 682
    .line 683
    add-int/2addr v8, v4

    .line 684
    mul-int/lit8 v4, v1, 0x8

    .line 685
    .line 686
    add-int/2addr v4, v8

    .line 687
    const/16 v8, 0x50

    .line 688
    .line 689
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    .line 690
    .line 691
    .line 692
    move-result v4

    .line 693
    int-to-double v8, v4

    .line 694
    const/4 v4, 0x1

    .line 695
    aget-wide v16, v5, v4

    .line 696
    .line 697
    add-double v8, v8, v16

    .line 698
    .line 699
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 700
    .line 701
    .line 702
    move-result-object v4

    .line 703
    const-string v8, "atk"

    .line 704
    .line 705
    invoke-interface {v13, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    div-int/2addr v0, v3

    .line 709
    add-int/2addr v0, v2

    .line 710
    mul-int/lit8 v2, v1, 0x4

    .line 711
    .line 712
    add-int/2addr v2, v0

    .line 713
    const/16 v0, 0x32

    .line 714
    .line 715
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 716
    .line 717
    .line 718
    move-result v3

    .line 719
    int-to-double v3, v3

    .line 720
    aget-wide v8, v5, v20

    .line 721
    .line 722
    add-double/2addr v3, v8

    .line 723
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 724
    .line 725
    .line 726
    move-result-object v3

    .line 727
    const-string v4, "def"

    .line 728
    .line 729
    invoke-interface {v13, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 733
    .line 734
    .line 735
    move-result v0

    .line 736
    int-to-double v2, v0

    .line 737
    aget-wide v4, v5, v21

    .line 738
    .line 739
    add-double/2addr v2, v4

    .line 740
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 741
    .line 742
    .line 743
    move-result-object v0

    .line 744
    const-string v2, "wis"

    .line 745
    .line 746
    invoke-interface {v13, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    .line 750
    .line 751
    const-string v2, "ladder_"

    .line 752
    .line 753
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    const-string v2, "_"

    .line 760
    .line 761
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    .line 763
    .line 764
    add-int/lit8 v8, v1, 0x1

    .line 765
    .line 766
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v5

    .line 773
    iget v2, v6, Lcom/sgscq/vpn/config/e;->c:I

    .line 774
    .line 775
    iget v3, v6, Lcom/sgscq/vpn/config/e;->e:I

    .line 776
    .line 777
    move/from16 v0, p0

    .line 778
    .line 779
    move-object v4, v15

    .line 780
    invoke-static/range {v0 .. v5}, Lcom/sgscq/vpn/handler/p0;->p(IIIILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 781
    .line 782
    .line 783
    move-result-object v0

    .line 784
    invoke-static {v0, v13}, Lcom/sgscq/vpn/handler/p0;->j(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V

    .line 785
    .line 786
    .line 787
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    .line 789
    .line 790
    move v1, v8

    .line 791
    move-object v9, v12

    .line 792
    move/from16 v8, v23

    .line 793
    .line 794
    move/from16 v27, v7

    .line 795
    .line 796
    move-object v7, v6

    .line 797
    move/from16 v6, v27

    .line 798
    .line 799
    goto/16 :goto_0

    .line 800
    .line 801
    :cond_28
    move-object v12, v9

    .line 802
    return-object v12

    .line 803
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static r(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 138

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v56

    .line 6
    move-object/from16 v1, p0

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/p0;->a0(ILjava/util/Map;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Lcom/sgscq/vpn/handler/p0;->U(I)Lcom/sgscq/vpn/config/e;

    .line 13
    .line 14
    .line 15
    move-result-object v7

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v128

    .line 21
    invoke-static {v0, v1, v7}, Lcom/sgscq/vpn/handler/p0;->s(IILcom/sgscq/vpn/config/e;)Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    .line 24
    move-result-object v15

    .line 25
    invoke-static {v0, v7}, Lcom/sgscq/vpn/handler/p0;->q(ILcom/sgscq/vpn/config/e;)Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    new-instance v14, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v13, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v12, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v11, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/sgscq/vpn/cloud/m0;->c0()Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    move-result-object v129

    .line 53
    move v2, v1

    .line 54
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const-string v10, "general_id"

    .line 59
    .line 60
    const-string v9, "fighting"

    .line 61
    .line 62
    if-ge v2, v1, :cond_2

    .line 63
    .line 64
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    move-object v6, v1

    .line 69
    check-cast v6, Ljava/util/Map;

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v3, "ladder_"

    .line 74
    .line 75
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v3, "_"

    .line 82
    .line 83
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    add-int/lit8 v5, v2, 0x1

    .line 87
    .line 88
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    const-string v1, "131001"

    .line 96
    .line 97
    invoke-interface {v6, v10, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    const-string v1, "hp"

    .line 106
    .line 107
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    move-object/from16 v30, v10

    .line 112
    .line 113
    move-object/from16 p0, v11

    .line 114
    .line 115
    const-wide v10, 0x408f400000000000L    # 1000.0

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    invoke-static {v1, v10, v11}, Lcom/sgscq/vpn/handler/p0;->y(Ljava/lang/Object;D)D

    .line 121
    .line 122
    .line 123
    move-result-wide v10

    .line 124
    const-string v1, "atk"

    .line 125
    .line 126
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    move-object/from16 v32, v13

    .line 131
    .line 132
    move-object/from16 v31, v14

    .line 133
    .line 134
    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    .line 135
    .line 136
    invoke-static {v1, v13, v14}, Lcom/sgscq/vpn/handler/p0;->y(Ljava/lang/Object;D)D

    .line 137
    .line 138
    .line 139
    move-result-wide v13

    .line 140
    const-string v1, "def"

    .line 141
    .line 142
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    move-object/from16 v33, v7

    .line 147
    .line 148
    move-object/from16 v34, v8

    .line 149
    .line 150
    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    .line 151
    .line 152
    invoke-static {v1, v7, v8}, Lcom/sgscq/vpn/handler/p0;->y(Ljava/lang/Object;D)D

    .line 153
    .line 154
    .line 155
    move-result-wide v35

    .line 156
    const-string v1, "wis"

    .line 157
    .line 158
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-static {v1, v7, v8}, Lcom/sgscq/vpn/handler/p0;->y(Ljava/lang/Object;D)D

    .line 163
    .line 164
    .line 165
    move-result-wide v7

    .line 166
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    const-string v1, "level"

    .line 171
    .line 172
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v18

    .line 176
    const-string v28, ""

    .line 177
    .line 178
    const-string v29, "0"

    .line 179
    .line 180
    move-object/from16 v16, v4

    .line 181
    .line 182
    move-object/from16 v17, v3

    .line 183
    .line 184
    move-wide/from16 v19, v10

    .line 185
    .line 186
    move-wide/from16 v21, v13

    .line 187
    .line 188
    move-wide/from16 v23, v35

    .line 189
    .line 190
    move-wide/from16 v25, v7

    .line 191
    .line 192
    move-object/from16 v27, v9

    .line 193
    .line 194
    move-object/from16 v37, v15

    .line 195
    .line 196
    invoke-static/range {v16 .. v29}, Lcom/sgscq/vpn/handler/p0;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;DDDDLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 197
    .line 198
    .line 199
    move-result-object v15

    .line 200
    move-wide/from16 v17, v7

    .line 201
    .line 202
    move-object/from16 v16, v9

    .line 203
    .line 204
    move-object/from16 v9, v33

    .line 205
    .line 206
    iget v7, v9, Lcom/sgscq/vpn/config/e;->f:I

    .line 207
    .line 208
    invoke-static {v4, v7, v3}, Lcom/sgscq/vpn/handler/p0;->Z(Ljava/lang/String;ILjava/lang/String;)Ljava/util/LinkedHashMap;

    .line 209
    .line 210
    .line 211
    move-result-object v8

    .line 212
    move-object/from16 v19, v3

    .line 213
    .line 214
    new-instance v3, Ljava/util/ArrayList;

    .line 215
    .line 216
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move/from16 v20, v5

    .line 223
    .line 224
    const-string v5, "fate_skill_id"

    .line 225
    .line 226
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-static {v5}, Lcom/sgscq/vpn/handler/p0;->m0(Ljava/lang/Object;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    const-string v13, "position"

    .line 235
    .line 236
    const-string v14, "general_pk_id"

    .line 237
    .line 238
    move-wide/from16 v23, v10

    .line 239
    .line 240
    const-string v10, "pk_id"

    .line 241
    .line 242
    if-eqz v5, :cond_0

    .line 243
    .line 244
    new-instance v11, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    move-object/from16 v25, v6

    .line 253
    .line 254
    const-string v6, "_skill2"

    .line 255
    .line 256
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    const/4 v11, 0x0

    .line 264
    invoke-static {v11}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 265
    .line 266
    .line 267
    move-result-object v11

    .line 268
    invoke-static {v10, v6, v14, v4}, Lc/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    move-object/from16 v26, v4

    .line 273
    .line 274
    const-string v4, "skill_id"

    .line 275
    .line 276
    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    const-string v4, "id"

    .line 280
    .line 281
    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    const-string v4, "skill_code"

    .line 285
    .line 286
    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    const-string v4, "card_type"

    .line 290
    .line 291
    move-object/from16 v27, v14

    .line 292
    .line 293
    const-string v14, "4"

    .line 294
    .line 295
    invoke-interface {v6, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    const/4 v4, 0x1

    .line 299
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    .line 300
    .line 301
    .line 302
    move-result v14

    .line 303
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v14

    .line 307
    invoke-interface {v6, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    .line 311
    .line 312
    .line 313
    move-result v4

    .line 314
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    const-string v14, "skill_level"

    .line 319
    .line 320
    invoke-interface {v6, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    const-string v4, "pos"

    .line 324
    .line 325
    const-string v14, "2"

    .line 326
    .line 327
    invoke-interface {v6, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    invoke-interface {v6, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    const-string v4, "skill_position"

    .line 334
    .line 335
    invoke-interface {v6, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    const-string v4, "is_natural"

    .line 339
    .line 340
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 341
    .line 342
    invoke-interface {v6, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    const-string v4, "get_time"

    .line 346
    .line 347
    const-string v14, "1"

    .line 348
    .line 349
    invoke-interface {v6, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    const-string v4, "exp"

    .line 353
    .line 354
    const-string v14, "0"

    .line 355
    .line 356
    invoke-interface {v6, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    const-string v4, "extra_level"

    .line 360
    .line 361
    invoke-interface {v6, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    const-string v4, "advanced_level"

    .line 365
    .line 366
    invoke-interface {v6, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v11, v5, v6}, Lcom/sgscq/vpn/w1;->S(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 370
    .line 371
    .line 372
    invoke-static {v5, v6}, Lcom/sgscq/vpn/handler/p0;->e0(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    goto :goto_1

    .line 382
    :cond_0
    move-object/from16 v26, v4

    .line 383
    .line 384
    move-object/from16 v25, v6

    .line 385
    .line 386
    move-object/from16 v27, v14

    .line 387
    .line 388
    :goto_1
    invoke-virtual {v8, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v4

    .line 392
    const-string v11, "general_naturalskill_id"

    .line 393
    .line 394
    invoke-interface {v15, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    const-string v14, "gSkill"

    .line 398
    .line 399
    invoke-interface {v15, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    const-string v6, "general_skills"

    .line 403
    .line 404
    invoke-interface {v15, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    iget v3, v9, Lcom/sgscq/vpn/config/e;->c:I

    .line 408
    .line 409
    iget v4, v9, Lcom/sgscq/vpn/config/e;->e:I

    .line 410
    .line 411
    move-object v5, v1

    .line 412
    move v1, v0

    .line 413
    move-object/from16 v28, v19

    .line 414
    .line 415
    move-object/from16 v29, v26

    .line 416
    .line 417
    move-object/from16 v38, v9

    .line 418
    .line 419
    move/from16 v33, v20

    .line 420
    .line 421
    move-object v9, v5

    .line 422
    move-object/from16 v5, v28

    .line 423
    .line 424
    move/from16 v40, v0

    .line 425
    .line 426
    move-object/from16 v130, v6

    .line 427
    .line 428
    move-object/from16 v0, v25

    .line 429
    .line 430
    move-object/from16 v6, v29

    .line 431
    .line 432
    invoke-static/range {v1 .. v6}, Lcom/sgscq/vpn/handler/p0;->p(IIIILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    invoke-static {v1, v15}, Lcom/sgscq/vpn/handler/p0;->j(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V

    .line 437
    .line 438
    .line 439
    move-object/from16 v6, v31

    .line 440
    .line 441
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    move-object/from16 v15, p0

    .line 448
    .line 449
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 450
    .line 451
    .line 452
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 453
    .line 454
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 455
    .line 456
    .line 457
    move-object/from16 v3, v29

    .line 458
    .line 459
    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-object/from16 v4, v28

    .line 463
    .line 464
    move-object/from16 v8, v30

    .line 465
    .line 466
    invoke-interface {v2, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-object/from16 v4, v27

    .line 470
    .line 471
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v4

    .line 478
    invoke-interface {v2, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    const-string v4, "general_position"

    .line 482
    .line 483
    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v5

    .line 487
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    const-string v4, "general_hp"

    .line 491
    .line 492
    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 493
    .line 494
    .line 495
    move-result-object v5

    .line 496
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    const-string v4, "general_attack"

    .line 500
    .line 501
    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 502
    .line 503
    .line 504
    move-result-object v5

    .line 505
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    const-string v4, "general_defense"

    .line 509
    .line 510
    invoke-static/range {v35 .. v36}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 511
    .line 512
    .line 513
    move-result-object v5

    .line 514
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    const-string v4, "general_wisdom"

    .line 518
    .line 519
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 520
    .line 521
    .line 522
    move-result-object v5

    .line 523
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    const-string v4, "general_fighting"

    .line 527
    .line 528
    move-object/from16 v5, v16

    .line 529
    .line 530
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    invoke-static {v1, v2}, Lcom/sgscq/vpn/handler/p0;->j(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V

    .line 534
    .line 535
    .line 536
    const-string v1, "deputy_general_id"

    .line 537
    .line 538
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    move-result v4

    .line 542
    if-eqz v4, :cond_1

    .line 543
    .line 544
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v4

    .line 548
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    new-instance v4, Ljava/lang/StringBuilder;

    .line 560
    .line 561
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    const-string v8, "_lt1"

    .line 568
    .line 569
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v4

    .line 576
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    const-wide v8, 0x3fd6666666666666L    # 0.35

    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    move-object/from16 p0, v12

    .line 586
    .line 587
    mul-double v12, v23, v8

    .line 588
    .line 589
    move-object/from16 v30, v14

    .line 590
    .line 591
    move-object/from16 v31, v15

    .line 592
    .line 593
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 594
    .line 595
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(DD)D

    .line 596
    .line 597
    .line 598
    move-result-wide v19

    .line 599
    mul-double v12, v21, v8

    .line 600
    .line 601
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(DD)D

    .line 602
    .line 603
    .line 604
    move-result-wide v21

    .line 605
    mul-double v12, v35, v8

    .line 606
    .line 607
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(DD)D

    .line 608
    .line 609
    .line 610
    move-result-wide v23

    .line 611
    mul-double v12, v17, v8

    .line 612
    .line 613
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(DD)D

    .line 614
    .line 615
    .line 616
    move-result-wide v25

    .line 617
    invoke-static {v5, v14, v15}, Lcom/sgscq/vpn/handler/p0;->y(Ljava/lang/Object;D)D

    .line 618
    .line 619
    .line 620
    move-result-wide v12

    .line 621
    mul-double/2addr v12, v8

    .line 622
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(DD)D

    .line 623
    .line 624
    .line 625
    move-result-wide v8

    .line 626
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 627
    .line 628
    .line 629
    move-result-object v27

    .line 630
    const-string v29, "1"

    .line 631
    .line 632
    move-object/from16 v16, v4

    .line 633
    .line 634
    move-object/from16 v17, v1

    .line 635
    .line 636
    move-object/from16 v18, v0

    .line 637
    .line 638
    move-object/from16 v28, v3

    .line 639
    .line 640
    invoke-static/range {v16 .. v29}, Lcom/sgscq/vpn/handler/p0;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;DDDDLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    invoke-static {v4, v7, v1}, Lcom/sgscq/vpn/handler/p0;->Z(Ljava/lang/String;ILjava/lang/String;)Ljava/util/LinkedHashMap;

    .line 645
    .line 646
    .line 647
    move-result-object v1

    .line 648
    invoke-virtual {v1, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v3

    .line 652
    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    const/4 v3, 0x1

    .line 656
    new-array v4, v3, [Ljava/util/Map;

    .line 657
    .line 658
    const/4 v5, 0x0

    .line 659
    aput-object v1, v4, v5

    .line 660
    .line 661
    invoke-static {v4}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 662
    .line 663
    .line 664
    move-result-object v4

    .line 665
    move-object/from16 v7, v30

    .line 666
    .line 667
    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    new-array v3, v3, [Ljava/util/Map;

    .line 671
    .line 672
    aput-object v1, v3, v5

    .line 673
    .line 674
    invoke-static {v3}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 675
    .line 676
    .line 677
    move-result-object v3

    .line 678
    move-object/from16 v4, v130

    .line 679
    .line 680
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    .line 685
    .line 686
    move-object/from16 v0, p0

    .line 687
    .line 688
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    .line 690
    .line 691
    goto :goto_2

    .line 692
    :cond_1
    move-object v0, v12

    .line 693
    move-object/from16 v31, v15

    .line 694
    .line 695
    :goto_2
    move-object/from16 v13, v32

    .line 696
    .line 697
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    .line 699
    .line 700
    move-object v12, v0

    .line 701
    move-object v14, v6

    .line 702
    move-object/from16 v11, v31

    .line 703
    .line 704
    move/from16 v2, v33

    .line 705
    .line 706
    move-object/from16 v8, v34

    .line 707
    .line 708
    move-object/from16 v15, v37

    .line 709
    .line 710
    move-object/from16 v7, v38

    .line 711
    .line 712
    move/from16 v0, v40

    .line 713
    .line 714
    goto/16 :goto_0

    .line 715
    .line 716
    :cond_2
    move/from16 v40, v0

    .line 717
    .line 718
    move-object v8, v10

    .line 719
    move-object/from16 v31, v11

    .line 720
    .line 721
    move-object v0, v12

    .line 722
    move-object v6, v14

    .line 723
    move-object/from16 v37, v15

    .line 724
    .line 725
    const-string v15, "player_id"

    .line 726
    .line 727
    move-object/from16 v14, v37

    .line 728
    .line 729
    invoke-virtual {v14, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v12

    .line 733
    const-string v1, "user_id"

    .line 734
    .line 735
    invoke-virtual {v14, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    move-result-object v2

    .line 739
    const-string v3, "account_uid"

    .line 740
    .line 741
    invoke-virtual {v14, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    move-result-object v4

    .line 745
    const-string v5, "uid"

    .line 746
    .line 747
    invoke-virtual {v14, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v7

    .line 751
    move-object/from16 v16, v6

    .line 752
    .line 753
    move-object v6, v7

    .line 754
    const-string v7, "player_type"

    .line 755
    .line 756
    const-string v10, "player_type"

    .line 757
    .line 758
    invoke-virtual {v14, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    move-result-object v10

    .line 762
    move-object v11, v8

    .line 763
    move-object v8, v10

    .line 764
    const-string v10, "nickname"

    .line 765
    .line 766
    move-object/from16 p0, v0

    .line 767
    .line 768
    move-object v0, v9

    .line 769
    move-object v9, v10

    .line 770
    const-string v10, "nickname"

    .line 771
    .line 772
    invoke-virtual {v14, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    .line 774
    .line 775
    move-result-object v17

    .line 776
    move-object/from16 v130, v1

    .line 777
    .line 778
    move-object v1, v10

    .line 779
    move-object/from16 v10, v17

    .line 780
    .line 781
    const-string v17, "nick"

    .line 782
    .line 783
    move-object/from16 v132, v2

    .line 784
    .line 785
    move-object v2, v11

    .line 786
    move-object/from16 v131, v31

    .line 787
    .line 788
    move-object/from16 v11, v17

    .line 789
    .line 790
    invoke-virtual {v14, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    .line 792
    .line 793
    move-result-object v17

    .line 794
    move-object/from16 v133, p0

    .line 795
    .line 796
    move-object/from16 v134, v12

    .line 797
    .line 798
    move-object/from16 v12, v17

    .line 799
    .line 800
    const-string v17, "nickName"

    .line 801
    .line 802
    move-object/from16 v135, v13

    .line 803
    .line 804
    move-object/from16 v13, v17

    .line 805
    .line 806
    invoke-virtual {v14, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    .line 808
    .line 809
    move-result-object v17

    .line 810
    move-object/from16 v136, v16

    .line 811
    .line 812
    move-object/from16 v16, v14

    .line 813
    .line 814
    move-object/from16 v14, v17

    .line 815
    .line 816
    const-string v17, "roleName"

    .line 817
    .line 818
    move-object/from16 p0, v3

    .line 819
    .line 820
    move-object/from16 v137, v15

    .line 821
    .line 822
    move-object/from16 v3, v16

    .line 823
    .line 824
    move-object/from16 v15, v17

    .line 825
    .line 826
    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    move-result-object v16

    .line 830
    const-string v17, "user_nickname"

    .line 831
    .line 832
    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-result-object v18

    .line 836
    const-string v19, "user_name"

    .line 837
    .line 838
    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v20

    .line 842
    const-string v21, "player_level"

    .line 843
    .line 844
    const-string v1, "player_level"

    .line 845
    .line 846
    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v22

    .line 850
    const-string v23, "user_level"

    .line 851
    .line 852
    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    .line 854
    .line 855
    move-result-object v24

    .line 856
    const-string v25, "level"

    .line 857
    .line 858
    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    move-result-object v26

    .line 862
    const-string v27, "user_vip_level"

    .line 863
    .line 864
    const-string v1, "user_vip_level"

    .line 865
    .line 866
    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    .line 868
    .line 869
    move-result-object v28

    .line 870
    const-string v29, "user_experience"

    .line 871
    .line 872
    const-string v31, "user_charge_count"

    .line 873
    .line 874
    const-string v33, "current_charge_gold"

    .line 875
    .line 876
    const-string v35, "count_charge_gold"

    .line 877
    .line 878
    const-string v37, "user_coin"

    .line 879
    .line 880
    const-string v39, "user_gold"

    .line 881
    .line 882
    const-string v41, "user_power"

    .line 883
    .line 884
    const-string v43, "user_power_date"

    .line 885
    .line 886
    const-string v45, "user_energy"

    .line 887
    .line 888
    const-string v47, "user_energy_date"

    .line 889
    .line 890
    const-string v49, "gold_soul"

    .line 891
    .line 892
    const-string v51, "sliver_soul"

    .line 893
    .line 894
    const-string v53, "user_sign"

    .line 895
    .line 896
    const-string v54, ""

    .line 897
    .line 898
    const-string v55, "user_last_login_time"

    .line 899
    .line 900
    const-string v57, "fightPoint"

    .line 901
    .line 902
    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    move-result-object v58

    .line 906
    const-string v59, "fight_point"

    .line 907
    .line 908
    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    .line 910
    .line 911
    move-result-object v60

    .line 912
    const-string v61, "user_fighting"

    .line 913
    .line 914
    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    .line 916
    .line 917
    move-result-object v62

    .line 918
    const-string v63, "fighting"

    .line 919
    .line 920
    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    .line 922
    .line 923
    move-result-object v64

    .line 924
    const-string v65, "ladder_rank"

    .line 925
    .line 926
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 927
    .line 928
    .line 929
    move-result-object v66

    .line 930
    const-string v67, "ladder_rank_salary"

    .line 931
    .line 932
    const-string v0, "fight_salary"

    .line 933
    .line 934
    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    .line 936
    .line 937
    move-result-object v68

    .line 938
    const-string v69, "ladder_challenging_num"

    .line 939
    .line 940
    const-string v71, "rank_name"

    .line 941
    .line 942
    const-string v0, "rank_name"

    .line 943
    .line 944
    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    .line 946
    .line 947
    move-result-object v72

    .line 948
    const-string v73, "general_id"

    .line 949
    .line 950
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    .line 952
    .line 953
    move-result-object v74

    .line 954
    const-string v75, "general_skin"

    .line 955
    .line 956
    const-string v0, "general_skin"

    .line 957
    .line 958
    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    .line 960
    .line 961
    move-result-object v76

    .line 962
    const-string v77, "head"

    .line 963
    .line 964
    const-string v0, "head"

    .line 965
    .line 966
    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    .line 968
    .line 969
    move-result-object v78

    .line 970
    const-string v79, "avatar"

    .line 971
    .line 972
    const-string v0, "avatar"

    .line 973
    .line 974
    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    move-result-object v80

    .line 978
    const-string v81, "user_ability"

    .line 979
    .line 980
    const-string v0, "user_ability"

    .line 981
    .line 982
    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    .line 984
    .line 985
    move-result-object v82

    .line 986
    const-string v83, "leadership_num"

    .line 987
    .line 988
    const-string v0, "leadership_num"

    .line 989
    .line 990
    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    .line 992
    .line 993
    move-result-object v84

    .line 994
    const-string v85, "first_choose_general"

    .line 995
    .line 996
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    .line 998
    .line 999
    move-result-object v86

    .line 1000
    const-string v87, "first_wine_general"

    .line 1001
    .line 1002
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v88

    .line 1006
    const-string v89, "freshman_step"

    .line 1007
    .line 1008
    const-string v90, "80000"

    .line 1009
    .line 1010
    const-string v91, "triple_speed"

    .line 1011
    .line 1012
    sget-object v92, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1013
    .line 1014
    const-string v93, "triple_speed_vip_level"

    .line 1015
    .line 1016
    const-string v95, "item_count"

    .line 1017
    .line 1018
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 1019
    .line 1020
    move-object/from16 v96, v0

    .line 1021
    .line 1022
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1023
    .line 1024
    .line 1025
    const-string v97, "user_map_step"

    .line 1026
    .line 1027
    const-string v98, "500001"

    .line 1028
    .line 1029
    const-string v99, "user_position_step"

    .line 1030
    .line 1031
    const v0, 0x7a509

    .line 1032
    .line 1033
    .line 1034
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v100

    .line 1038
    const-string v101, "user_elite_map_step"

    .line 1039
    .line 1040
    const-string v102, "10501"

    .line 1041
    .line 1042
    const-string v103, "user_elite_position_step"

    .line 1043
    .line 1044
    const-string v104, "1050100101"

    .line 1045
    .line 1046
    const-string v105, "dungeon_cold_time"

    .line 1047
    .line 1048
    const-string v107, "cd_item_price"

    .line 1049
    .line 1050
    const-string v109, "base_cold_time"

    .line 1051
    .line 1052
    const-string v111, "to_danger_time"

    .line 1053
    .line 1054
    const-string v113, "user_honor"

    .line 1055
    .line 1056
    const-string v115, "union_id"

    .line 1057
    .line 1058
    const-string v117, "union_name"

    .line 1059
    .line 1060
    const-string v118, ""

    .line 1061
    .line 1062
    const-string v119, "user_role"

    .line 1063
    .line 1064
    const-string v121, "user_donate"

    .line 1065
    .line 1066
    const-string v123, "donate_num"

    .line 1067
    .line 1068
    const-string v125, "donate_state"

    .line 1069
    .line 1070
    const-string v127, "union_war_sign_up"

    .line 1071
    .line 1072
    move-object/from16 v30, v128

    .line 1073
    .line 1074
    move-object/from16 v32, v128

    .line 1075
    .line 1076
    move-object/from16 v34, v128

    .line 1077
    .line 1078
    move-object/from16 v36, v128

    .line 1079
    .line 1080
    move-object/from16 v38, v56

    .line 1081
    .line 1082
    move-object/from16 v40, v56

    .line 1083
    .line 1084
    move-object/from16 v42, v56

    .line 1085
    .line 1086
    move-object/from16 v44, v128

    .line 1087
    .line 1088
    move-object/from16 v46, v56

    .line 1089
    .line 1090
    move-object/from16 v48, v128

    .line 1091
    .line 1092
    move-object/from16 v50, v128

    .line 1093
    .line 1094
    move-object/from16 v52, v128

    .line 1095
    .line 1096
    move-object/from16 v70, v128

    .line 1097
    .line 1098
    move-object/from16 v94, v128

    .line 1099
    .line 1100
    move-object/from16 v106, v128

    .line 1101
    .line 1102
    move-object/from16 v108, v128

    .line 1103
    .line 1104
    move-object/from16 v110, v128

    .line 1105
    .line 1106
    move-object/from16 v112, v128

    .line 1107
    .line 1108
    move-object/from16 v114, v128

    .line 1109
    .line 1110
    move-object/from16 v116, v128

    .line 1111
    .line 1112
    move-object/from16 v120, v128

    .line 1113
    .line 1114
    move-object/from16 v122, v128

    .line 1115
    .line 1116
    move-object/from16 v124, v128

    .line 1117
    .line 1118
    move-object/from16 v126, v128

    .line 1119
    .line 1120
    move-object/from16 v3, p0

    .line 1121
    .line 1122
    move-object/from16 v1, v130

    .line 1123
    .line 1124
    move-object/from16 v2, v132

    .line 1125
    .line 1126
    filled-new-array/range {v1 .. v128}, [Ljava/lang/Object;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v0

    .line 1130
    move-object/from16 v2, v134

    .line 1131
    .line 1132
    move-object/from16 v1, v137

    .line 1133
    .line 1134
    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v9

    .line 1138
    move-object/from16 v10, v136

    .line 1139
    .line 1140
    move-object/from16 v11, v135

    .line 1141
    .line 1142
    move-object/from16 v12, v133

    .line 1143
    .line 1144
    move-object/from16 v13, v129

    .line 1145
    .line 1146
    move-object/from16 v14, v131

    .line 1147
    .line 1148
    invoke-static/range {v9 .. v14}, Lcom/sgscq/vpn/cloud/m0;->A(Ljava/util/LinkedHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v0

    .line 1152
    return-object v0
.end method

.method public static s(IILcom/sgscq/vpn/config/e;)Ljava/util/LinkedHashMap;
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/handler/p0;->I(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "ladder_rank"

    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, "ladder_npc_"

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v4, "player_id"

    .line 34
    .line 35
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "user_id"

    .line 51
    .line 52
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v3, "player_type"

    .line 61
    .line 62
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    const-string v3, "player_level"

    .line 66
    .line 67
    iget v4, p2, Lcom/sgscq/vpn/config/e;->a:I

    .line 68
    .line 69
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    const-string v3, "user_level"

    .line 77
    .line 78
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    const-string v3, "level"

    .line 86
    .line 87
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v5, "\u5929\u68af\u5bf9\u624b"

    .line 97
    .line 98
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    const/4 v5, 0x0

    .line 109
    invoke-static {p0, v4, v5}, Lcom/sgscq/vpn/handler/p0;->J(III)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    const-string v5, "nickname"

    .line 114
    .line 115
    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    const-string v5, "user_nickname"

    .line 119
    .line 120
    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    const-string v5, "user_name"

    .line 124
    .line 125
    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    const-string v5, "user_nick"

    .line 129
    .line 130
    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    const-string v5, "userName"

    .line 134
    .line 135
    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    const-string v5, "roleName"

    .line 139
    .line 140
    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    rem-int/lit8 p1, p1, 0x4

    .line 144
    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    const-string v3, "user_vip_level"

    .line 150
    .line 151
    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    invoke-static {p0}, Lcom/sgscq/vpn/p5;->T0(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    const-string v3, "rank_name"

    .line 159
    .line 160
    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    const-string p1, "to_attack"

    .line 164
    .line 165
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    const-string p1, "is_enemy"

    .line 169
    .line 170
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    const-string p1, "general_id"

    .line 174
    .line 175
    invoke-interface {v1, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    const-string p1, "general_skin"

    .line 179
    .line 180
    invoke-interface {v1, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    const-string p1, "user_general_skin"

    .line 184
    .line 185
    invoke-interface {v1, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    const-string p1, "head"

    .line 189
    .line 190
    invoke-interface {v1, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    const-string p1, "avatar"

    .line 194
    .line 195
    invoke-interface {v1, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    invoke-static {p0}, Lcom/sgscq/vpn/p5;->f1(I)I

    .line 199
    .line 200
    .line 201
    move-result p0

    .line 202
    div-int/lit8 p0, p0, 0xa

    .line 203
    .line 204
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    const-string p1, "fight_salary"

    .line 209
    .line 210
    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    const-string p0, "fighting"

    .line 214
    .line 215
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    const-string p0, "fight_point"

    .line 223
    .line 224
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    const-string p0, "fightPoint"

    .line 232
    .line 233
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    iget p0, p2, Lcom/sgscq/vpn/config/e;->d:I

    .line 241
    .line 242
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    const-string p2, "user_ability"

    .line 247
    .line 248
    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    const-string p1, "leadership_num"

    .line 252
    .line 253
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    const-string p1, "leadershipNum"

    .line 261
    .line 262
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object p2

    .line 266
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    const-string p1, "user_leadership_num"

    .line 270
    .line 271
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    const-string p1, "govern"

    .line 279
    .line 280
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 281
    .line 282
    .line 283
    move-result-object p2

    .line 284
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    const-string p1, "team_size"

    .line 288
    .line 289
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    return-object v1
.end method

.method public static t(Lcom/sgscq/vpn/p7;Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 17

    .line 1
    move-object/from16 v7, p2

    .line 2
    .line 3
    const/16 v0, 0x3e9

    .line 4
    .line 5
    const-string v1, "ladder_rank"

    .line 6
    .line 7
    invoke-static {v0, v1, v7}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 8
    .line 9
    .line 10
    move-result v8

    .line 11
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const-string v0, "ladder_best_rank"

    .line 24
    .line 25
    invoke-static {v8, v0, v7}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "best_rank"

    .line 34
    .line 35
    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    invoke-static {v8}, Lcom/sgscq/vpn/p5;->T0(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "rank_name"

    .line 43
    .line 44
    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    invoke-static {v8}, Lcom/sgscq/vpn/p5;->f1(I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "cur_rank_salary"

    .line 56
    .line 57
    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    const/16 v10, 0x64

    .line 61
    .line 62
    const/16 v11, 0xa

    .line 63
    .line 64
    if-gt v8, v11, :cond_0

    .line 65
    .line 66
    const/16 v0, 0x5dc

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/16 v0, 0x3e8

    .line 70
    .line 71
    if-gt v8, v10, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    if-gt v8, v0, :cond_2

    .line 75
    .line 76
    const/16 v0, 0x1f4

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const/16 v0, 0xc8

    .line 80
    .line 81
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v1, "next_rank_salary"

    .line 86
    .line 87
    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    const/4 v12, 0x0

    .line 91
    const-string v0, "ladderRankSalary"

    .line 92
    .line 93
    invoke-static {v12, v0, v7}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string v1, "ladder_rank_salary"

    .line 102
    .line 103
    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/handler/p0;->w(Ljava/util/Map;)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    const-string v1, "total_challenge_num"

    .line 111
    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    const-string v1, "ladderChallengeTimes"

    .line 120
    .line 121
    invoke-static {v0, v1, v7}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const-string v1, "challenging_num"

    .line 130
    .line 131
    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    new-instance v13, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    new-instance v14, Ljava/util/HashSet;

    .line 140
    .line 141
    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 142
    .line 143
    .line 144
    const/4 v15, 0x1

    .line 145
    move v6, v15

    .line 146
    :goto_1
    if-gt v6, v11, :cond_3

    .line 147
    .line 148
    move-object v0, v13

    .line 149
    move-object v1, v14

    .line 150
    move-object/from16 v2, p2

    .line 151
    .line 152
    move-object/from16 v3, p1

    .line 153
    .line 154
    move-object/from16 v4, p0

    .line 155
    .line 156
    move v5, v8

    .line 157
    move/from16 v16, v6

    .line 158
    .line 159
    invoke-static/range {v0 .. v6}, Lcom/sgscq/vpn/handler/p0;->d(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/util/Map;Ljava/lang/String;Lcom/sgscq/vpn/p7;II)V

    .line 160
    .line 161
    .line 162
    add-int/lit8 v6, v16, 0x1

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .line 169
    .line 170
    :goto_2
    const/4 v5, 0x5

    .line 171
    if-lt v10, v5, :cond_5

    .line 172
    .line 173
    sub-int v0, v8, v10

    .line 174
    .line 175
    if-le v0, v11, :cond_4

    .line 176
    .line 177
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    :cond_4
    add-int/lit8 v10, v10, -0x5

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_5
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-ge v12, v0, :cond_6

    .line 192
    .line 193
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    check-cast v0, Ljava/lang/Integer;

    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 200
    .line 201
    .line 202
    move-result v10

    .line 203
    move-object v0, v13

    .line 204
    move-object v1, v14

    .line 205
    move-object/from16 v2, p2

    .line 206
    .line 207
    move-object/from16 v3, p1

    .line 208
    .line 209
    move-object/from16 v4, p0

    .line 210
    .line 211
    move v11, v5

    .line 212
    move v5, v8

    .line 213
    move-object/from16 v16, v6

    .line 214
    .line 215
    move v6, v10

    .line 216
    invoke-static/range {v0 .. v6}, Lcom/sgscq/vpn/handler/p0;->d(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/util/Map;Ljava/lang/String;Lcom/sgscq/vpn/p7;II)V

    .line 217
    .line 218
    .line 219
    add-int/lit8 v12, v12, 0x1

    .line 220
    .line 221
    move v5, v11

    .line 222
    move-object/from16 v6, v16

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_6
    move v11, v5

    .line 226
    move-object v0, v13

    .line 227
    move-object v1, v14

    .line 228
    move-object/from16 v2, p2

    .line 229
    .line 230
    move-object/from16 v3, p1

    .line 231
    .line 232
    move-object/from16 v4, p0

    .line 233
    .line 234
    move v5, v8

    .line 235
    move v6, v8

    .line 236
    invoke-static/range {v0 .. v6}, Lcom/sgscq/vpn/handler/p0;->d(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/util/Map;Ljava/lang/String;Lcom/sgscq/vpn/p7;II)V

    .line 237
    .line 238
    .line 239
    :goto_4
    if-gt v15, v11, :cond_7

    .line 240
    .line 241
    add-int v6, v8, v15

    .line 242
    .line 243
    move-object v0, v13

    .line 244
    move-object v1, v14

    .line 245
    move-object/from16 v2, p2

    .line 246
    .line 247
    move-object/from16 v3, p1

    .line 248
    .line 249
    move-object/from16 v4, p0

    .line 250
    .line 251
    move v5, v8

    .line 252
    invoke-static/range {v0 .. v6}, Lcom/sgscq/vpn/handler/p0;->d(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/util/Map;Ljava/lang/String;Lcom/sgscq/vpn/p7;II)V

    .line 253
    .line 254
    .line 255
    add-int/lit8 v15, v15, 0x1

    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_7
    const-string v0, "ladder_team"

    .line 259
    .line 260
    invoke-interface {v9, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    return-object v9
.end method

.method public static u(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 9

    .line 1
    const/16 v0, 0x270f

    .line 2
    .line 3
    const-string v1, "ladder_rank"

    .line 4
    .line 5
    invoke-static {v0, v1, p0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-string v1, "uid"

    .line 22
    .line 23
    const-string v3, "account_uid"

    .line 24
    .line 25
    const-string v4, "player_id"

    .line 26
    .line 27
    const-string v5, "user_id"

    .line 28
    .line 29
    filled-new-array {v3, v4, v1, v5}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    move v6, v3

    .line 39
    :goto_0
    const/4 v7, 0x4

    .line 40
    if-ge v6, v7, :cond_1

    .line 41
    .line 42
    aget-object v7, v1, v6

    .line 43
    .line 44
    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    if-eqz v7, :cond_0

    .line 49
    .line 50
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-nez v8, :cond_0

    .line 63
    .line 64
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const-string v1, "local-player"

    .line 73
    .line 74
    :goto_1
    const-string v6, "player_type"

    .line 75
    .line 76
    const/4 v7, 0x1

    .line 77
    invoke-static {v2, v4, v1, v7, v6}, Lcom/sgscq/vpn/handler/l;->b(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v1, "user_level"

    .line 81
    .line 82
    invoke-static {v7, v1, p0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    const-string v6, "player_level"

    .line 91
    .line 92
    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    invoke-static {v7, v1, p0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    const-string v4, "level"

    .line 104
    .line 105
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    const-string v1, "user_nickname"

    .line 109
    .line 110
    const-string v4, "\u73a9\u5bb6"

    .line 111
    .line 112
    invoke-interface {p0, v1, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {p0}, Lcom/sgscq/vpn/handler/p0;->x(Ljava/util/Map;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-static {v4, p0}, Lcom/sgscq/vpn/p5;->F(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    const-string v7, "nickname"

    .line 129
    .line 130
    invoke-interface {v2, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    const-string v7, "user_name"

    .line 134
    .line 135
    invoke-interface {v2, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    const-string v7, "user_nick"

    .line 139
    .line 140
    invoke-interface {v2, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    const-string v7, "userName"

    .line 144
    .line 145
    invoke-interface {v2, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    const-string v7, "roleName"

    .line 149
    .line 150
    invoke-interface {v2, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    const-string v1, "user_vip_level"

    .line 154
    .line 155
    invoke-static {v3, v1, p0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->T0(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    const-string v3, "rank_name"

    .line 171
    .line 172
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    const-string v1, "to_attack"

    .line 176
    .line 177
    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    const-string v1, "is_enemy"

    .line 181
    .line 182
    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    const-string v1, "general_id"

    .line 186
    .line 187
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    const-string v1, "general_skin"

    .line 191
    .line 192
    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    const-string v1, "user_general_skin"

    .line 196
    .line 197
    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    const-string v1, "head"

    .line 201
    .line 202
    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    const-string v1, "avatar"

    .line 206
    .line 207
    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->f1(I)I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    div-int/lit8 v0, v0, 0xa

    .line 215
    .line 216
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    const-string v1, "fight_salary"

    .line 221
    .line 222
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    const-string v0, "prob_type"

    .line 226
    .line 227
    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    const/16 v0, 0x64

    .line 231
    .line 232
    const-string v1, "fightPoint"

    .line 233
    .line 234
    invoke-static {v0, v1, p0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    const-string v3, "fighting"

    .line 239
    .line 240
    invoke-static {v0, v3, p0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    const-string v3, "fight_point"

    .line 252
    .line 253
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    invoke-static {p0}, Lcom/sgscq/vpn/handler/p0;->b0(Ljava/util/Map;)I

    .line 268
    .line 269
    .line 270
    move-result p0

    .line 271
    const-string v0, "user_ability"

    .line 272
    .line 273
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    const-string v0, "leadership_num"

    .line 281
    .line 282
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    const-string v0, "leadershipNum"

    .line 290
    .line 291
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    const-string v0, "user_leadership_num"

    .line 299
    .line 300
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    const-string v0, "govern"

    .line 308
    .line 309
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 310
    .line 311
    .line 312
    move-result-object p0

    .line 313
    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    return-object v2
.end method

.method public static v(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    const/16 v1, 0x270f

    const-string v2, "ladder_rank"

    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "ladder_challenging_num"

    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/p0;->w(Ljava/util/Map;)I

    move-result v4

    const-string v6, "ladderChallengeTimes"

    invoke-static {v4, v6, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "ladderChallengeTimes"

    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/p0;->w(Ljava/util/Map;)I

    move-result v7

    invoke-static {v7, v6, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ladder_rank_salary"

    const/4 v15, 0x0

    const-string v10, "ladderRankSalary"

    invoke-static {v15, v10, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "ladderRankSalary"

    invoke-static {v15, v10, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "user_honor"

    const-string v14, "user_honor"

    invoke-static {v15, v14, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "honor"

    invoke-static {v15, v14, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v16, "user_level"

    move-object/from16 v29, v1

    move v1, v15

    move-object/from16 v15, v16

    const/4 v1, 0x1

    move-object/from16 v30, v2

    const-string v2, "level"

    move-object/from16 v31, v3

    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v3

    const-string v1, "user_level"

    invoke-static {v3, v1, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const-string v17, "level"

    const/4 v3, 0x1

    invoke-static {v3, v2, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    invoke-static {v2, v1, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const-string v19, "user_exp"

    const-string v1, "user_experience"

    const/4 v2, 0x0

    invoke-static {v2, v1, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v3

    const-string v2, "user_exp"

    invoke-static {v3, v2, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-string v21, "user_experience"

    move-object/from16 v32, v4

    const/4 v3, 0x0

    invoke-static {v3, v2, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v4

    invoke-static {v4, v1, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const-string v23, "experience"

    invoke-static {v3, v2, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    invoke-static {v2, v1, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v1

    const-string v2, "experience"

    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const-string v25, "user_energy"

    const-string v1, "user_energy"

    invoke-static {v3, v1, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const-string v27, "user_energy_date"

    const-string v1, "user_energy_date"

    invoke-static {v3, v1, v0}, Lcom/sgscq/vpn/handler/p0;->E(ILjava/lang/String;Ljava/util/Map;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    filled-new-array/range {v3 .. v28}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v2, v1, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public static w(Ljava/util/Map;)I
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/cloud/m0;->n2(Ljava/util/Map;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-int/lit8 v1, v1, 0x5

    .line 11
    .line 12
    const/16 v2, 0x14

    .line 13
    .line 14
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x6

    .line 19
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {p0, v2}, Lcom/sgscq/vpn/cloud/m0;->d3(ILandroid/content/Context;)Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string v2, "ladder_challenge_num"

    .line 32
    .line 33
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0, v1}, Lcom/sgscq/vpn/cloud/m0;->X1(Ljava/lang/Object;I)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    :goto_0
    return v1
.end method

.method public static x(Ljava/util/Map;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "general_skin"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/sgscq/vpn/handler/p0;->m0(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    const-string v1, "TeamGeneral"

    .line 17
    .line 18
    invoke-static {v1, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lc/n;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    invoke-direct {v1, v2}, Lc/n;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const-string v2, "131001"

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/util/Map;

    .line 51
    .line 52
    const-string v3, "general_pk_id"

    .line 53
    .line 54
    const-string v4, ""

    .line 55
    .line 56
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string v3, "General"

    .line 65
    .line 66
    invoke-static {v3, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_1

    .line 79
    .line 80
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Ljava/util/Map;

    .line 85
    .line 86
    const-string v5, "pk_id"

    .line 87
    .line 88
    invoke-static {v4, v5, v1}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_2

    .line 93
    .line 94
    const-string p0, "general_id"

    .line 95
    .line 96
    invoke-interface {v4, p0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0

    .line 105
    :cond_3
    const-string v0, "first_choose_general"

    .line 106
    .line 107
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    if-eqz p0, :cond_4

    .line 112
    .line 113
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_4

    .line 122
    .line 123
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const-string v1, "0"

    .line 128
    .line 129
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_4

    .line 134
    .line 135
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    return-object p0

    .line 140
    :cond_4
    return-object v2
.end method

.method public static y(Ljava/lang/Object;D)D
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    return-wide p0

    :cond_0
    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-wide p1
.end method

.method public static z(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    const-string v1, "equipment_type"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "equipment_pos"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p1

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x2

    if-lt p1, v1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x31

    if-lt p0, p1, :cond_2

    const/16 p1, 0x34

    if-gt p0, p1, :cond_2

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method
