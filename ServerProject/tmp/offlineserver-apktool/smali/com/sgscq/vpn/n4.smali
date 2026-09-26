.class public final Lcom/sgscq/vpn/n4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Ljava/util/LinkedHashMap;

.field public final d:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/n4;->c:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/n4;->d:Ljava/util/LinkedHashSet;

    iput-object p1, p0, Lcom/sgscq/vpn/n4;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/sgscq/vpn/n4;->b:Z

    return-void
.end method
