.class public final Lm/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ll/b;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final synthetic e:Lm/e;


# direct methods
.method public constructor <init>(Lm/e;Ll/b;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/d;->e:Lm/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lm/d;->a:Ll/b;

    iput p3, p0, Lm/d;->b:I

    iput p4, p0, Lm/d;->c:I

    iput p5, p0, Lm/d;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 1
    sget-object v0, Ll/b;->e:Ll/b;

    .line 2
    .line 3
    iget-object v1, p0, Lm/d;->a:Ll/b;

    .line 4
    .line 5
    iget v2, p0, Lm/d;->d:I

    .line 6
    .line 7
    if-ne v1, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lm/d;->e:Lm/e;

    .line 10
    .line 11
    iget-object v0, v0, Lm/e;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lm/f;

    .line 14
    .line 15
    iget-object v1, v0, Lm/f;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lj/c;

    .line 18
    .line 19
    iget-object v0, v0, Lm/f;->b:Ljava/io/Serializable;

    .line 20
    .line 21
    check-cast v0, Ljava/lang/String;

    .line 22
    .line 23
    iget v3, p0, Lm/d;->b:I

    .line 24
    .line 25
    add-int/2addr v2, v3

    .line 26
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, v1, Lj/c;->a:[Ljava/nio/charset/CharsetEncoder;

    .line 31
    .line 32
    iget v2, p0, Lm/d;->c:I

    .line 33
    .line 34
    aget-object v1, v1, v2

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    array-length v2, v0

    .line 45
    :cond_0
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lm/d;->a:Ll/b;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/16 v2, 0x28

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    sget-object v2, Ll/b;->f:Ll/b;

    .line 17
    .line 18
    iget-object v3, p0, Lm/d;->e:Lm/e;

    .line 19
    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    iget-object v1, v3, Lm/e;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lm/f;

    .line 25
    .line 26
    iget-object v1, v1, Lm/f;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Lj/c;

    .line 29
    .line 30
    iget-object v1, v1, Lj/c;->a:[Ljava/nio/charset/CharsetEncoder;

    .line 31
    .line 32
    iget v2, p0, Lm/d;->c:I

    .line 33
    .line 34
    aget-object v1, v1, v2

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    goto :goto_3

    .line 45
    :cond_0
    iget-object v1, v3, Lm/e;->d:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Lm/f;

    .line 48
    .line 49
    iget-object v1, v1, Lm/f;->b:Ljava/io/Serializable;

    .line 50
    .line 51
    check-cast v1, Ljava/lang/String;

    .line 52
    .line 53
    iget v2, p0, Lm/d;->d:I

    .line 54
    .line 55
    iget v3, p0, Lm/d;->b:I

    .line 56
    .line 57
    add-int/2addr v2, v3

    .line 58
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-ge v3, v4, :cond_3

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    const/16 v5, 0x20

    .line 79
    .line 80
    if-lt v4, v5, :cond_2

    .line 81
    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    const/16 v5, 0x7e

    .line 87
    .line 88
    if-le v4, v5, :cond_1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    :goto_1
    const/16 v4, 0x2e

    .line 97
    .line 98
    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    add-int/lit8 v3, v3, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const/16 v1, 0x29

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    return-object v0
.end method
