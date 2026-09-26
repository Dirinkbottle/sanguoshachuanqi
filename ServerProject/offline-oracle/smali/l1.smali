.class public final Lcom/sgscq/vpn/l1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;

.field public final c:D

.field public final d:D

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;DDZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/l1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sgscq/vpn/l1;->b:Ljava/util/List;

    iput-wide p3, p0, Lcom/sgscq/vpn/l1;->c:D

    iput-wide p5, p0, Lcom/sgscq/vpn/l1;->d:D

    iput-boolean p7, p0, Lcom/sgscq/vpn/l1;->e:Z

    return-void
.end method
