.class public final Lcom/sgscq/vpn/i5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;

.field public final c:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;D)V
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
    iput-object p1, p0, Lcom/sgscq/vpn/i5;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p2}, Lcom/sgscq/vpn/n5;->u(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/sgscq/vpn/i5;->b:Ljava/util/List;

    .line 22
    .line 23
    iput-wide p3, p0, Lcom/sgscq/vpn/i5;->c:D

    .line 24
    .line 25
    return-void
.end method
