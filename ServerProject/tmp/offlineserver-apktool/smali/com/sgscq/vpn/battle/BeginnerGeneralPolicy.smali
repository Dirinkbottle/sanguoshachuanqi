.class public final Lcom/sgscq/vpn/battle/BeginnerGeneralPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_BEGINNER_RESOURCE_INDEX:I = 0x1b5


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBeginnerResourceIndex(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-lt p0, v1, :cond_1

    const/16 v2, 0x1b5

    if-gt p0, v2, :cond_1

    move v0, v1

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method
