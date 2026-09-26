.class public final Lg/c;
.super La/i0;
.source "SourceFile"


# static fields
.field public static final b:Ld/a;


# instance fields
.field public final a:La/i0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ld/a;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ld/a;-><init>(I)V

    sput-object v0, Lg/c;->b:Ld/a;

    return-void
.end method

.method public constructor <init>(La/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, La/i0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg/c;->a:La/i0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Lh/a;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lg/c;->a:La/i0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, La/i0;->b(Lh/a;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/Date;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/sql/Timestamp;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return-object v0
.end method

.method public final c(Lh/b;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Ljava/sql/Timestamp;

    .line 2
    .line 3
    iget-object v0, p0, Lg/c;->a:La/i0;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, La/i0;->c(Lh/b;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
