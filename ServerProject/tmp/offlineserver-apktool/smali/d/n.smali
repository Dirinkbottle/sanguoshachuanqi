.class public final Ld/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/j0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Ld/n;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ld/n;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(La/o;Lcom/google/gson/reflect/TypeToken;)La/i0;
    .locals 3

    .line 1
    iget v0, p0, Ld/n;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ld/n;->b:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-class p2, Ljava/lang/Number;

    .line 15
    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    .line 18
    move-object v2, v1

    .line 19
    check-cast v2, Ld/o;

    .line 20
    .line 21
    :cond_0
    return-object v2

    .line 22
    :goto_0
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const-class v0, Ljava/lang/Object;

    .line 27
    .line 28
    if-ne p2, v0, :cond_1

    .line 29
    .line 30
    new-instance v2, Ld/p;

    .line 31
    .line 32
    check-cast v1, La/h0;

    .line 33
    .line 34
    invoke-direct {v2, p1, v1}, Ld/p;-><init>(La/o;La/h0;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-object v2

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
