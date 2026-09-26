.class public final Lcom/sgscq/vpn/k5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;

.field public final c:D

.field public final d:Z

.field public final e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;DZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/k5;->a:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sgscq/vpn/k5;->b:Ljava/util/List;

    iput-wide p3, p0, Lcom/sgscq/vpn/k5;->c:D

    iput-boolean p5, p0, Lcom/sgscq/vpn/k5;->d:Z

    iput p6, p0, Lcom/sgscq/vpn/k5;->e:I

    return-void
.end method
