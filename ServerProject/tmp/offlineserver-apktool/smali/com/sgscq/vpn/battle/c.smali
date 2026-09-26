.class public final synthetic Lcom/sgscq/vpn/battle/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/sgscq/vpn/battle/c;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/battle/c;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/battle/c;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sgscq/vpn/battle/c;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_2

    .line 9
    :pswitch_0
    check-cast v1, Lcom/sgscq/vpn/handler/w;

    .line 10
    .line 11
    check-cast p1, Ljava/util/Map;

    .line 12
    .line 13
    check-cast p2, Ljava/util/Map;

    .line 14
    .line 15
    sget-object v0, Lcom/sgscq/vpn/handler/w;->e:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, v1, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

    .line 18
    .line 19
    const/16 v2, 0x3e7

    .line 20
    .line 21
    const-string v3, "team_position"

    .line 22
    .line 23
    invoke-virtual {v0, v2, v3, p1}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const-string v5, "position"

    .line 28
    .line 29
    invoke-virtual {v0, v4, v5, p1}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iget-object v0, v1, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

    .line 34
    .line 35
    invoke-virtual {v0, v2, v3, p2}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1, v5, p2}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    return p1

    .line 48
    :pswitch_1
    check-cast v1, Lcom/sgscq/vpn/battle/f;

    .line 49
    .line 50
    check-cast p1, Lcom/sgscq/vpn/battle/BattleUnit;

    .line 51
    .line 52
    check-cast p2, Lcom/sgscq/vpn/battle/BattleUnit;

    .line 53
    .line 54
    const v0, 0x7fffffff

    .line 55
    .line 56
    .line 57
    if-nez p1, :cond_0

    .line 58
    .line 59
    move p1, v0

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v1, p1}, Lcom/sgscq/vpn/battle/f;->a(Lcom/sgscq/vpn/battle/BattleUnit;)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    :goto_0
    if-nez p2, :cond_1

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {v1, p2}, Lcom/sgscq/vpn/battle/f;->a(Lcom/sgscq/vpn/battle/BattleUnit;)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    :goto_1
    invoke-static {p1, v0}, Ljava/lang/Integer;->compare(II)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    return p1

    .line 80
    :goto_2
    check-cast v1, Lcom/sgscq/vpn/handler/y;

    .line 81
    .line 82
    check-cast p1, Ljava/util/Map;

    .line 83
    .line 84
    check-cast p2, Ljava/util/Map;

    .line 85
    .line 86
    iget v0, v1, Lcom/sgscq/vpn/handler/y;->c:I

    .line 87
    .line 88
    invoke-static {v0, p2}, Lcom/sgscq/vpn/handler/z;->t(ILjava/util/Map;)I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    iget v0, v1, Lcom/sgscq/vpn/handler/y;->c:I

    .line 93
    .line 94
    invoke-static {v0, p1}, Lcom/sgscq/vpn/handler/z;->t(ILjava/util/Map;)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    invoke-static {p2, p1}, Ljava/lang/Integer;->compare(II)I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    return p1

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
