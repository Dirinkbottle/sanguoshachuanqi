.class public final Lcom/sgscq/vpn/config/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Lm/e;

.field public final d:Lcom/sgscq/vpn/t;

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lm/e;Lcom/sgscq/vpn/t;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sgscq/vpn/config/i;->a:I

    iput-object p2, p0, Lcom/sgscq/vpn/config/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sgscq/vpn/config/i;->c:Lm/e;

    iput-object p4, p0, Lcom/sgscq/vpn/config/i;->d:Lcom/sgscq/vpn/t;

    invoke-static {p5}, Lcom/sgscq/vpn/config/i;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sgscq/vpn/config/i;->e:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
