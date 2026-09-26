.class public final Lcom/sgscq/vpn/cloud/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sgscq/vpn/cloud/k;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sgscq/vpn/cloud/k;->c:Ljava/lang/Object;

    iput p1, p0, Lcom/sgscq/vpn/cloud/k;->a:I

    if-nez p4, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p4

    :cond_0
    iput-object p4, p0, Lcom/sgscq/vpn/cloud/k;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/sgscq/vpn/cloud/g;Lcom/sgscq/vpn/battle/a;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/cloud/k;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sgscq/vpn/cloud/k;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sgscq/vpn/cloud/k;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sgscq/vpn/cloud/k;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 3
    const/4 v0, -0x1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/sgscq/vpn/cloud/k;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
