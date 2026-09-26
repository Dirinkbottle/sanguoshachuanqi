.class public abstract Lo/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "sgscq-battle-runtime-v1"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lo/b;->a:[B

    return-void
.end method

.method public static a([B[BLjava/lang/String;I)[B
    .locals 7

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/16 v1, 0x1d

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    array-length v0, p1

    .line 11
    const/16 v1, 0x20

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 30
    .line 31
    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    const-string v0, "dex"

    .line 36
    .line 37
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "all"

    .line 44
    .line 45
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    sget-object v2, Lo/b;->a:[B

    .line 52
    .line 53
    array-length v3, v2

    .line 54
    add-int/lit8 v3, v3, 0x1

    .line 55
    .line 56
    array-length v4, p2

    .line 57
    add-int/2addr v3, v4

    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    array-length v4, p3

    .line 61
    add-int/2addr v3, v4

    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    array-length v4, v0

    .line 65
    add-int/2addr v3, v4

    .line 66
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    array-length v4, v1

    .line 69
    add-int/2addr v3, v4

    .line 70
    new-array v3, v3, [B

    .line 71
    .line 72
    array-length v4, v2

    .line 73
    const/4 v5, 0x0

    .line 74
    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    .line 76
    .line 77
    array-length v2, v2

    .line 78
    add-int/2addr v2, v5

    .line 79
    const/16 v4, 0x7c

    .line 80
    .line 81
    aput-byte v4, v3, v2

    .line 82
    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    array-length v6, p2

    .line 86
    invoke-static {p2, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    .line 88
    .line 89
    array-length p2, p2

    .line 90
    add-int/2addr v2, p2

    .line 91
    aput-byte v4, v3, v2

    .line 92
    .line 93
    add-int/lit8 v2, v2, 0x1

    .line 94
    .line 95
    array-length p2, p3

    .line 96
    invoke-static {p3, v5, v3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    .line 98
    .line 99
    array-length p2, p3

    .line 100
    add-int/2addr v2, p2

    .line 101
    aput-byte v4, v3, v2

    .line 102
    .line 103
    add-int/lit8 v2, v2, 0x1

    .line 104
    .line 105
    array-length p2, v0

    .line 106
    invoke-static {v0, v5, v3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    .line 108
    .line 109
    array-length p2, v0

    .line 110
    add-int/2addr v2, p2

    .line 111
    aput-byte v4, v3, v2

    .line 112
    .line 113
    add-int/lit8 v2, v2, 0x1

    .line 114
    .line 115
    array-length p2, v1

    .line 116
    invoke-static {v1, v5, v3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    .line 118
    .line 119
    const-string p2, "AES/GCM/NoPadding"

    .line 120
    .line 121
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    .line 126
    .line 127
    const-string v0, "AES"

    .line 128
    .line 129
    invoke-direct {p3, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    new-instance p1, Ljavax/crypto/spec/GCMParameterSpec;

    .line 133
    .line 134
    const/16 v0, 0x80

    .line 135
    .line 136
    const/16 v1, 0xc

    .line 137
    .line 138
    invoke-direct {p1, v0, p0, v5, v1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    .line 139
    .line 140
    .line 141
    const/4 v0, 0x2

    .line 142
    invoke-virtual {p2, v0, p3, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, v3}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 146
    .line 147
    .line 148
    array-length p1, p0

    .line 149
    sub-int/2addr p1, v1

    .line 150
    invoke-virtual {p2, p0, v1, p1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    return-object p0

    .line 155
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 156
    .line 157
    const-string p1, "invalid encrypted module"

    .line 158
    .line 159
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p0
.end method
