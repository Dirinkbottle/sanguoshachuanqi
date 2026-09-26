.class public abstract Lcom/sgscq/vpn/c2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/TimeZone;

.field public static final b:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "GMT+08:00"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/c2;->a:Ljava/util/TimeZone;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/sgscq/vpn/b2;

    const-string v2, "181001"

    const-string v3, "\u9b54\u00b7\u5f20\u98de\u9b42\u9b44\u00d71"

    const-string v4, "792328"

    invoke-direct {v1, v4, v2, v3}, Lcom/sgscq/vpn/b2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sgscq/vpn/b2;

    const-string v2, "\u9b54\u00b7\u8c82\u8749\u9b42\u9b44\u00d71"

    const-string v3, "792329"

    const-string v4, "181002"

    invoke-direct {v1, v3, v4, v2}, Lcom/sgscq/vpn/b2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sgscq/vpn/b2;

    const-string v2, "\u9b54\u00b7\u9a6c\u8d85\u9b42\u9b44\u00d71"

    const-string v3, "792330"

    const-string v4, "181003"

    invoke-direct {v1, v3, v4, v2}, Lcom/sgscq/vpn/b2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sgscq/vpn/b2;

    const-string v2, "\u9b54\u00b7\u51cc\u7edf\u9b42\u9b44\u00d71"

    const-string v3, "792331"

    const-string v4, "181004"

    invoke-direct {v1, v3, v4, v2}, Lcom/sgscq/vpn/b2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sgscq/vpn/b2;

    const-string v2, "\u9b54\u00b7\u8463\u5353\u9b42\u9b44\u00d71"

    const-string v3, "792332"

    const-string v4, "181005"

    invoke-direct {v1, v3, v4, v2}, Lcom/sgscq/vpn/b2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sgscq/vpn/b2;

    const-string v2, "\u9b54\u00b7\u8d3e\u8be9\u9b42\u9b44\u00d71"

    const-string v3, "792333"

    const-string v4, "181006"

    invoke-direct {v1, v3, v4, v2}, Lcom/sgscq/vpn/b2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sgscq/vpn/b2;

    const-string v2, "\u9b54\u00b7\u9ec4\u76d6\u9b42\u9b44\u00d71"

    const-string v3, "792353"

    const-string v4, "181008"

    invoke-direct {v1, v3, v4, v2}, Lcom/sgscq/vpn/b2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sgscq/vpn/b2;

    const-string v2, "\u9b54\u00b7\u5f20\u89d2\u9b42\u9b44\u00d71"

    const-string v3, "792347"

    const-string v4, "181009"

    invoke-direct {v1, v3, v4, v2}, Lcom/sgscq/vpn/b2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/c2;->b:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/sgscq/vpn/b2;
    .locals 2

    .line 1
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/sgscq/vpn/c2;->d(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "H6"

    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v1, "H7"

    .line 20
    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, -0x1

    .line 30
    :goto_0
    if-gez p0, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    invoke-static {v0}, Lcom/sgscq/vpn/c2;->b(I)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ge p0, v1, :cond_3

    .line 42
    .line 43
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Lcom/sgscq/vpn/b2;

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 51
    :goto_2
    return-object p0
.end method

.method public static b(I)Ljava/util/List;
    .locals 3

    .line 1
    sget-object v0, Lcom/sgscq/vpn/c2;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    invoke-static {p0, v1}, Ljava/lang/Math;->floorMod(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 v1, p0, 0x2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0, p0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static c(JLjava/util/Map;)I
    .locals 5

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const-string v0, "user_register_time"

    .line 6
    .line 7
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    :goto_0
    instance-of v0, p2, Ljava/lang/Number;

    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    check-cast p2, Ljava/lang/Number;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    goto :goto_2

    .line 24
    :cond_1
    if-nez p2, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_2

    .line 36
    :catch_0
    :goto_1
    move-wide v3, v1

    .line 37
    :goto_2
    cmp-long p2, v3, v1

    .line 38
    .line 39
    const/16 v0, 0x14

    .line 40
    .line 41
    if-lez p2, :cond_5

    .line 42
    .line 43
    const-wide v1, 0x20c49ba5e353f7L

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    cmp-long p2, v3, v1

    .line 49
    .line 50
    if-lez p2, :cond_3

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_3
    const-wide/16 v1, 0x3e8

    .line 54
    .line 55
    mul-long/2addr v3, v1

    .line 56
    cmp-long p2, p0, v3

    .line 57
    .line 58
    if-gez p2, :cond_4

    .line 59
    .line 60
    return v0

    .line 61
    :cond_4
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 62
    .line 63
    sget-object v1, Lcom/sgscq/vpn/c2;->a:Ljava/util/TimeZone;

    .line 64
    .line 65
    invoke-static {v1, p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 70
    .line 71
    .line 72
    const/16 v3, 0xb

    .line 73
    .line 74
    const/4 v4, 0x0

    .line 75
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 76
    .line 77
    .line 78
    const/16 v3, 0xc

    .line 79
    .line 80
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 81
    .line 82
    .line 83
    const/16 v3, 0xd

    .line 84
    .line 85
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 86
    .line 87
    .line 88
    const/16 v3, 0xe

    .line 89
    .line 90
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 94
    .line 95
    .line 96
    move-result-wide v2

    .line 97
    invoke-static {v1, p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p2, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 102
    .line 103
    .line 104
    const/4 v1, 0x5

    .line 105
    const/16 v2, 0xa

    .line 106
    .line 107
    invoke-virtual {p2, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 111
    .line 112
    .line 113
    move-result-wide v1

    .line 114
    cmp-long p0, p0, v1

    .line 115
    .line 116
    if-gez p0, :cond_5

    .line 117
    .line 118
    const/16 v0, 0x10

    .line 119
    .line 120
    :cond_5
    :goto_3
    return v0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 11

    .line 1
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v3, 0x6

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    new-instance p0, Ljava/util/GregorianCalendar;

    sget-object v2, Lcom/sgscq/vpn/c2;->a:Ljava/util/TimeZone;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    add-int/lit8 v6, v1, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, v1

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method
