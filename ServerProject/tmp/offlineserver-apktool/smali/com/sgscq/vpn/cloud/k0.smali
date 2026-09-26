.class public final Lcom/sgscq/vpn/cloud/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:J

.field public final f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string p1, ""

    .line 7
    .line 8
    :cond_0
    iput-object p1, p0, Lcom/sgscq/vpn/cloud/k0;->a:Ljava/lang/String;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lcom/sgscq/vpn/cloud/k0;->b:I

    .line 16
    .line 17
    iput-boolean p3, p0, Lcom/sgscq/vpn/cloud/k0;->c:Z

    .line 18
    .line 19
    iput-object p4, p0, Lcom/sgscq/vpn/cloud/k0;->d:Ljava/lang/String;

    .line 20
    .line 21
    const-wide/16 p1, 0x0

    .line 22
    .line 23
    invoke-static {p1, p2, p5, p6}, Ljava/lang/Math;->max(JJ)J

    .line 24
    .line 25
    .line 26
    move-result-wide p3

    .line 27
    iput-wide p3, p0, Lcom/sgscq/vpn/cloud/k0;->e:J

    .line 28
    .line 29
    invoke-static {p1, p2, p7, p8}, Ljava/lang/Math;->max(JJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide p1

    .line 33
    iput-wide p1, p0, Lcom/sgscq/vpn/cloud/k0;->f:J

    .line 34
    .line 35
    return-void
.end method
