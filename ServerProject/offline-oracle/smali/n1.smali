.class public final synthetic Lcom/sgscq/vpn/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sgscq/vpn/n1;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/n1;->a:I

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    const/16 v2, 0x3e7

    .line 7
    .line 8
    const-string v3, "position"

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :pswitch_0
    check-cast p1, Ljava/util/Map;

    .line 15
    .line 16
    sget-object v0, Lcom/sgscq/vpn/handler/x0;->c:Ljava/util/List;

    .line 17
    .line 18
    const-string v0, "general_id"

    .line 19
    .line 20
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1, v1}, Lcom/sgscq/vpn/handler/x0;->C0(Ljava/lang/Object;I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :pswitch_1
    check-cast p1, Ljava/util/Map;

    .line 30
    .line 31
    sget-object v0, Lcom/sgscq/vpn/handler/x0;->c:Ljava/util/List;

    .line 32
    .line 33
    const-string v0, "grade"

    .line 34
    .line 35
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/16 v0, 0x63

    .line 40
    .line 41
    invoke-static {p1, v0}, Lcom/sgscq/vpn/handler/x0;->C0(Ljava/lang/Object;I)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1

    .line 46
    :pswitch_2
    check-cast p1, Ljava/util/Map;

    .line 47
    .line 48
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1, v2}, Lcom/sgscq/vpn/handler/n0;->b(Ljava/lang/Object;I)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    return p1

    .line 57
    :pswitch_3
    check-cast p1, Ljava/util/Map;

    .line 58
    .line 59
    sget-object v0, Lcom/sgscq/vpn/handler/w;->e:Ljava/lang/String;

    .line 60
    .line 61
    const-string v0, "general_position"

    .line 62
    .line 63
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1, v2}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-static {v0, p1}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    return p1

    .line 80
    :pswitch_4
    check-cast p1, Lcom/sgscq/vpn/v5;

    .line 81
    .line 82
    iget p1, p1, Lcom/sgscq/vpn/v5;->e:I

    .line 83
    .line 84
    return p1

    .line 85
    :pswitch_5
    check-cast p1, Ljava/util/Map;

    .line 86
    .line 87
    invoke-static {p1}, Lcom/sgscq/vpn/p5;->n1(Ljava/util/Map;)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    return p1

    .line 92
    :pswitch_6
    check-cast p1, Lcom/sgscq/vpn/o1;

    .line 93
    .line 94
    iget p1, p1, Lcom/sgscq/vpn/o1;->b:I

    .line 95
    .line 96
    return p1

    .line 97
    :pswitch_7
    check-cast p1, Lcom/sgscq/vpn/p1;

    .line 98
    .line 99
    iget-object p1, p1, Lcom/sgscq/vpn/p1;->a:Ljava/lang/String;

    .line 100
    .line 101
    const-string v0, "620"

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    xor-int/lit8 p1, p1, 0x1

    .line 108
    .line 109
    return p1

    .line 110
    :goto_0
    check-cast p1, Ljava/util/Map;

    .line 111
    .line 112
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {p1, v1}, Lcom/sgscq/vpn/cloud/m0;->h1(Ljava/lang/Object;I)I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    return p1

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
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
