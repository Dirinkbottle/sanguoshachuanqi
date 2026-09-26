.class public final Ld/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/j0;


# instance fields
.field public final synthetic a:I

.field public final b:Lc/i;


# direct methods
.method public synthetic constructor <init>(Lc/i;I)V
    .locals 0

    .line 1
    iput p2, p0, Ld/d;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ld/d;->b:Lc/i;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static b(Lc/i;La/o;Lcom/google/gson/reflect/TypeToken;Lb/a;)La/i0;
    .locals 1

    .line 1
    invoke-interface {p3}, Lb/a;->value()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/i;->b(Lcom/google/gson/reflect/TypeToken;)Lc/t;

    move-result-object p0

    invoke-interface {p0}, Lc/t;->a()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p3}, Lb/a;->nullSafe()Z

    move-result p3

    instance-of v0, p0, La/i0;

    if-eqz v0, :cond_0

    check-cast p0, La/i0;

    goto :goto_0

    :cond_0
    instance-of v0, p0, La/j0;

    if-eqz v0, :cond_2

    check-cast p0, La/j0;

    invoke-interface {p0, p1, p2}, La/j0;->a(La/o;Lcom/google/gson/reflect/TypeToken;)La/i0;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p0}, La/i0;->a()La/m;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid attempt to bind an instance of "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " as a @JsonAdapter for "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(La/o;Lcom/google/gson/reflect/TypeToken;)La/i0;
    .locals 6

    .line 1
    iget v0, p0, Ld/d;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ld/d;->b:Lc/i;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_2

    .line 10
    :pswitch_0
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-class v4, Ljava/util/Collection;

    .line 19
    .line 20
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-nez v5, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-static {v0, v3, v4}, Lcom/sgscq/vpn/cloud/m0;->a1(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v2, 0x0

    .line 42
    aget-object v0, v0, v2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-class v0, Ljava/lang/Object;

    .line 46
    .line 47
    :goto_0
    invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p1, v2}, La/o;->f(Lcom/google/gson/reflect/TypeToken;)La/i0;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, p2}, Lc/i;->b(Lcom/google/gson/reflect/TypeToken;)Lc/t;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    new-instance v1, Ld/c;

    .line 60
    .line 61
    invoke-direct {v1, p1, v0, v2, p2}, Ld/c;-><init>(La/o;Ljava/lang/reflect/Type;La/i0;Lc/t;)V

    .line 62
    .line 63
    .line 64
    move-object v2, v1

    .line 65
    :goto_1
    return-object v2

    .line 66
    :goto_2
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-class v3, Lb/a;

    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lb/a;

    .line 77
    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_2
    invoke-static {v1, p1, p2, v0}, Ld/d;->b(Lc/i;La/o;Lcom/google/gson/reflect/TypeToken;Lb/a;)La/i0;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    :goto_3
    return-object v2

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
