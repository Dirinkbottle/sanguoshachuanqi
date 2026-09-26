.class public final Lcom/sgscq/vpn/battle/BattleStarCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculate(ZII)I
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/sgscq/vpn/battle/BattleStarCalculator;->ceilPercent(II)I

    move-result p0

    const/16 p1, 0x4e

    if-lt p0, p1, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const/16 p1, 0x32

    if-lt p0, p1, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/16 p1, 0xa

    if-lt p0, p1, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public static ceilPercent(II)I
    .locals 6

    if-lez p1, :cond_1

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    int-to-long p0, p0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    const-wide/16 v2, 0x64

    mul-long/2addr p0, v2

    add-long/2addr p0, v0

    const-wide/16 v4, 0x1

    sub-long/2addr p0, v4

    div-long/2addr p0, v0

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
