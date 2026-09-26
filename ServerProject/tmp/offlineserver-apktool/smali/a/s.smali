.class public final La/s;
.super La/q;
.source "SourceFile"


# static fields
.field public static final a:La/s;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, La/s;

    invoke-direct {v0}, La/s;-><init>()V

    sput-object v0, La/s;->a:La/s;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()La/q;
    .locals 1

    .line 1
    sget-object v0, La/s;->a:La/s;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, La/s;

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    const-class v0, La/s;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
