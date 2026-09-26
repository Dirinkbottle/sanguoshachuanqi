.class public final Ld/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/j0;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ld/a;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(La/o;Lcom/google/gson/reflect/TypeToken;)La/i0;
    .locals 3

    .line 1
    iget v0, p0, Ld/a;->a:I

    .line 2
    .line 3
    const-class v1, Ljava/util/Date;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :pswitch_0
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-class p2, Ljava/sql/Time;

    .line 16
    .line 17
    if-ne p1, p2, :cond_0

    .line 18
    .line 19
    new-instance v2, Lg/b;

    .line 20
    .line 21
    invoke-direct {v2}, Lg/b;-><init>()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-object v2

    .line 25
    :pswitch_1
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-class p2, Ljava/sql/Date;

    .line 30
    .line 31
    if-ne p1, p2, :cond_1

    .line 32
    .line 33
    new-instance v2, Lg/a;

    .line 34
    .line 35
    invoke-direct {v2}, Lg/a;-><init>()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-object v2

    .line 39
    :pswitch_2
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-class p2, Ljava/lang/Enum;

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    if-ne p1, p2, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-nez p2, :cond_3

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    :cond_3
    new-instance v2, Ld/w;

    .line 65
    .line 66
    invoke-direct {v2, p1}, Ld/w;-><init>(Ljava/lang/Class;)V

    .line 67
    .line 68
    .line 69
    :cond_4
    :goto_0
    return-object v2

    .line 70
    :pswitch_3
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-ne p1, v1, :cond_5

    .line 75
    .line 76
    new-instance v2, Ld/e;

    .line 77
    .line 78
    invoke-direct {v2}, Ld/e;-><init>()V

    .line 79
    .line 80
    .line 81
    :cond_5
    return-object v2

    .line 82
    :pswitch_4
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    .line 87
    .line 88
    if-nez v0, :cond_6

    .line 89
    .line 90
    instance-of v1, p2, Ljava/lang/Class;

    .line 91
    .line 92
    if-eqz v1, :cond_8

    .line 93
    .line 94
    move-object v1, p2

    .line 95
    check-cast v1, Ljava/lang/Class;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_6

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_6
    if-eqz v0, :cond_7

    .line 105
    .line 106
    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    .line 107
    .line 108
    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    goto :goto_1

    .line 113
    :cond_7
    check-cast p2, Ljava/lang/Class;

    .line 114
    .line 115
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    :goto_1
    invoke-static {p2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {p1, v0}, La/o;->f(Lcom/google/gson/reflect/TypeToken;)La/i0;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    new-instance v2, Ld/b;

    .line 128
    .line 129
    invoke-static {p2}, Lcom/sgscq/vpn/cloud/m0;->Y0(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-direct {v2, p1, v0, p2}, Ld/b;-><init>(La/o;La/i0;Ljava/lang/Class;)V

    .line 134
    .line 135
    .line 136
    :cond_8
    :goto_2
    return-object v2

    .line 137
    :goto_3
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    const-class v0, Ljava/sql/Timestamp;

    .line 142
    .line 143
    if-ne p2, v0, :cond_9

    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    invoke-static {v1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-virtual {p1, p2}, La/o;->f(Lcom/google/gson/reflect/TypeToken;)La/i0;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    new-instance v2, Lg/c;

    .line 157
    .line 158
    invoke-direct {v2, p1}, Lg/c;-><init>(La/i0;)V

    .line 159
    .line 160
    .line 161
    :cond_9
    return-object v2

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
