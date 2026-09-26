.class public final Ld/b;
.super La/i0;
.source "SourceFile"


# static fields
.field public static final c:Ld/a;


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ld/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ld/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld/a;-><init>(I)V

    sput-object v0, Ld/b;->c:Ld/a;

    return-void
.end method

.method public constructor <init>(La/o;La/i0;Ljava/lang/Class;)V
    .locals 1

    .line 1
    invoke-direct {p0}, La/i0;-><init>()V

    new-instance v0, Ld/w;

    invoke-direct {v0, p1, p2, p3}, Ld/w;-><init>(La/o;La/i0;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Ld/b;->b:Ld/w;

    iput-object p3, p0, Ld/b;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final b(Lh/a;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lh/a;->z()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lh/a;->v()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lh/a;->c()V

    :goto_0
    invoke-virtual {p1}, Lh/a;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ld/b;->b:Ld/w;

    invoke-virtual {v1, p1}, Ld/w;->b(Lh/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lh/a;->g()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v1, p0, Ld/b;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lh/b;Ljava/lang/Object;)V
    .locals 4

    .line 1
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lh/b;->k()Lh/b;

    return-void

    :cond_0
    invoke-virtual {p1}, Lh/b;->d()V

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Ld/b;->b:Ld/w;

    invoke-virtual {v3, p1, v2}, Ld/w;->c(Lh/b;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lh/b;->g()V

    return-void
.end method
