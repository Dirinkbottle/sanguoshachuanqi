.class public final Lcom/sgscq/vpn/config/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:J

.field public static final c:J

.field public static final synthetic d:I


# instance fields
.field public final a:Lcom/sgscq/vpn/config/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "2026-07-30T08:00:00+08:00"

    invoke-static {v0}, Lcom/sgscq/vpn/config/k;->c(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/sgscq/vpn/config/k;->b:J

    const-string v0, "2026-07-30T12:00:00+08:00"

    invoke-static {v0}, Lcom/sgscq/vpn/config/k;->c(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/sgscq/vpn/config/k;->c:J

    return-void
.end method

.method public constructor <init>(Lcom/sgscq/vpn/config/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/config/k;->a:Lcom/sgscq/vpn/config/i;

    return-void
.end method

.method public static c(Ljava/lang/String;)J
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssXXX"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid campaign timestamp"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a(IIJ)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/config/k;->a:Lcom/sgscq/vpn/config/i;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/sgscq/vpn/config/i;->e:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_4

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/sgscq/vpn/config/a;

    .line 20
    .line 21
    iget-boolean v2, v1, Lcom/sgscq/vpn/config/a;->a:Z

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-static {p1}, Lc/a;->b(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, v1, Lcom/sgscq/vpn/config/a;->f:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v2, v1, Lcom/sgscq/vpn/config/a;->b:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v2}, Lcom/sgscq/vpn/config/k;->c(Ljava/lang/String;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    iget-object v4, v1, Lcom/sgscq/vpn/config/a;->c:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v4}, Lcom/sgscq/vpn/config/k;->c(Ljava/lang/String;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v4

    .line 50
    cmp-long v2, p3, v2

    .line 51
    .line 52
    if-ltz v2, :cond_0

    .line 53
    .line 54
    cmp-long v2, p3, v4

    .line 55
    .line 56
    if-ltz v2, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    int-to-long p1, p2

    .line 60
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget p2, v1, Lcom/sgscq/vpn/config/a;->d:I

    .line 65
    .line 66
    int-to-long p2, p2

    .line 67
    invoke-static {p2, p3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-wide/16 p2, 0x64

    .line 76
    .line 77
    invoke-static {p2, p3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string p2, "half_up"

    .line 86
    .line 87
    iget-object p3, v1, Lcom/sgscq/vpn/config/a;->e:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-eqz p2, :cond_3

    .line 94
    .line 95
    sget-object p2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    sget-object p2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 99
    .line 100
    :goto_1
    const/4 p3, 0x0

    .line 101
    invoke-virtual {p1, p3, p2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValueExact()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    return p1

    .line 110
    :cond_4
    return p2
.end method

.method public final b(ILjava/util/Map;Z)I
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return p1

    .line 4
    :cond_0
    const-string v0, "effect_value"

    .line 5
    .line 6
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    if-nez p2, :cond_1

    .line 11
    .line 12
    const-string p2, ""

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    .line 16
    .line 17
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/sgscq/vpn/config/k;->a:Lcom/sgscq/vpn/config/i;

    .line 46
    .line 47
    if-eqz p3, :cond_2

    .line 48
    .line 49
    iget-object p3, v0, Lcom/sgscq/vpn/config/i;->d:Lcom/sgscq/vpn/t;

    .line 50
    .line 51
    iget-object p3, p3, Lcom/sgscq/vpn/t;->d:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p3, Ljava/util/Map;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object p3, v0, Lcom/sgscq/vpn/config/i;->d:Lcom/sgscq/vpn/t;

    .line 57
    .line 58
    iget-object p3, p3, Lcom/sgscq/vpn/t;->c:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p3, Ljava/util/Map;

    .line 61
    .line 62
    :goto_1
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    check-cast p2, Lcom/sgscq/vpn/config/d;

    .line 67
    .line 68
    if-nez p2, :cond_3

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    iget p1, p2, Lcom/sgscq/vpn/config/d;->a:I

    .line 72
    .line 73
    :goto_2
    return p1
.end method

.method public final d(Lcom/sgscq/vpn/config/m;Lcom/sgscq/vpn/config/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJ)Lcom/sgscq/vpn/config/l;
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v12, p9

    move-object/from16 v14, p0

    move/from16 v5, p3

    move/from16 v2, p8

    move/from16 v19, v4

    move-wide/from16 v3, p10

    invoke-virtual {v14, v5, v2, v3, v4}, Lcom/sgscq/vpn/config/k;->a(IIJ)I

    move-result v11

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "limited_shop:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    iget-object v3, v1, Lcom/sgscq/vpn/config/c;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lc/a;->E(I)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v2, v0, Lcom/sgscq/vpn/config/m;->d:Ljava/lang/String;

    .line 4
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v20, Lcom/sgscq/vpn/config/l;

    move-object/from16 v2, v20

    .line 5
    iget-object v5, v1, Lcom/sgscq/vpn/config/c;->a:Ljava/lang/String;

    .line 6
    iget v13, v1, Lcom/sgscq/vpn/config/c;->e:I

    .line 7
    iget-wide v14, v0, Lcom/sgscq/vpn/config/m;->b:J

    .line 8
    iget-wide v0, v0, Lcom/sgscq/vpn/config/m;->c:J

    move-wide/from16 v16, v0

    move/from16 v4, v19

    .line 9
    invoke-direct/range {v2 .. v18}, Lcom/sgscq/vpn/config/l;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIJJLjava/lang/String;)V

    return-object v20
.end method

.method public final e(IJJ)I
    .locals 3

    .line 1
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p4, p5}, Lcom/sgscq/vpn/config/k;->a(IIJ)I

    move-result v0

    sget-wide v1, Lcom/sgscq/vpn/config/k;->b:J

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    sget-wide v1, Lcom/sgscq/vpn/config/k;->c:J

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0x36ee80

    add-long/2addr v1, p2

    :goto_0
    cmp-long p2, p4, p2

    if-ltz p2, :cond_2

    cmp-long p2, p4, v1

    if-ltz p2, :cond_1

    goto :goto_1

    :cond_1
    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    const-wide/16 p2, 0x50

    invoke-static {p2, p3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    const-wide/16 p2, 0x64

    invoke-static {p2, p3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    const/4 p2, 0x0

    sget-object p3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {p1, p2, p3}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValueExact()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_2
    :goto_1
    return v0
.end method
