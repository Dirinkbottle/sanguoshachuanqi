.class public final enum La/d0;
.super La/g0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "LAZILY_PARSED_NUMBER"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, La/g0;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Lh/a;)Ljava/lang/Number;
    .locals 1

    .line 1
    new-instance v0, Lc/m;

    invoke-virtual {p1}, Lh/a;->x()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lc/m;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
