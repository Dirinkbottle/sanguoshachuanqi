.class public abstract enum La/g0;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements La/h0;


# static fields
.field public static final enum a:La/c0;

.field public static final enum b:La/d0;

.field public static final synthetic c:[La/g0;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, La/c0;

    invoke-direct {v0}, La/c0;-><init>()V

    sput-object v0, La/g0;->a:La/c0;

    new-instance v1, La/d0;

    invoke-direct {v1}, La/d0;-><init>()V

    sput-object v1, La/g0;->b:La/d0;

    new-instance v2, La/e0;

    invoke-direct {v2}, La/e0;-><init>()V

    new-instance v3, La/f0;

    invoke-direct {v3}, La/f0;-><init>()V

    filled-new-array {v0, v1, v2, v3}, [La/g0;

    move-result-object v0

    sput-object v0, La/g0;->c:[La/g0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/g0;
    .locals 1

    .line 1
    const-class v0, La/g0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/g0;

    return-object p0
.end method

.method public static values()[La/g0;
    .locals 1

    .line 1
    sget-object v0, La/g0;->c:[La/g0;

    invoke-virtual {v0}, [La/g0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/g0;

    return-object v0
.end method
