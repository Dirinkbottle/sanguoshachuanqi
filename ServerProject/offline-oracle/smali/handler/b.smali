.class public final Lcom/sgscq/vpn/handler/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 7

    .line 1
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sgscq/vpn/handler/b;-><init>(IIIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sgscq/vpn/handler/b;->a:I

    iput-object p5, p0, Lcom/sgscq/vpn/handler/b;->b:Ljava/lang/String;

    iput-object p6, p0, Lcom/sgscq/vpn/handler/b;->c:Ljava/lang/String;

    iput p2, p0, Lcom/sgscq/vpn/handler/b;->d:I

    iput p3, p0, Lcom/sgscq/vpn/handler/b;->e:I

    iput p4, p0, Lcom/sgscq/vpn/handler/b;->f:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 6

    .line 3
    const/4 v2, 0x1

    const/4 v3, 0x5

    move-object v0, p0

    move v1, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sgscq/vpn/handler/b;-><init>(IIIILjava/lang/String;)V

    return-void
.end method
