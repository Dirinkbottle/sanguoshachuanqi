.class public abstract Lcom/sgscq/vpn/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "194001"

    const-string v1, "193002"

    const-string v2, "192003"

    const-string v3, "192004"

    const-string v4, "191005"

    const-string v5, "191006"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/m;->a:Ljava/util/List;

    return-void
.end method
