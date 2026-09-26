.class public final Lcom/sgscq/vpn/cloud/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:J


# direct methods
.method public constructor <init>(IIIIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sgscq/vpn/cloud/o;->a:I

    iput p2, p0, Lcom/sgscq/vpn/cloud/o;->b:I

    iput p3, p0, Lcom/sgscq/vpn/cloud/o;->c:I

    iput p4, p0, Lcom/sgscq/vpn/cloud/o;->d:I

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, p5, p6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sgscq/vpn/cloud/o;->e:J

    return-void
.end method
