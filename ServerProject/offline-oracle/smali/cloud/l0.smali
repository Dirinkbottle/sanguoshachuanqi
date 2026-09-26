.class public final Lcom/sgscq/vpn/cloud/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/io/File;

.field public final c:Ljava/io/File;

.field public final d:Ljava/io/File;

.field public final e:Ljava/io/File;

.field public final f:Ljava/io/File;

.field public final g:Ljava/io/File;

.field public final h:Ljava/io/File;

.field public final i:Lc/e;

.field public final j:La/o;

.field public final k:Lcom/sgscq/vpn/s5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, La/o;

    .line 5
    .line 6
    invoke-direct {v0}, La/o;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/sgscq/vpn/cloud/l0;->j:La/o;

    .line 10
    .line 11
    new-instance v0, Lcom/sgscq/vpn/s5;

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v0, p0, v1, v2}, Lcom/sgscq/vpn/s5;-><init>(Ljava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/sgscq/vpn/cloud/l0;->k:Lcom/sgscq/vpn/s5;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v0, Ljava/io/File;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "cloud_opponents"

    .line 31
    .line 32
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v1, "release"

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v3, "debug"

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    const-string v0, "\u4e91\u7aef\u5bf9\u624b\u73af\u5883\u65e0\u6548"

    .line 59
    .line 60
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/sgscq/vpn/cloud/l0;->a:Ljava/lang/String;

    .line 65
    .line 66
    new-instance v1, Ljava/io/File;

    .line 67
    .line 68
    const-string v3, "cloud_opponents_"

    .line 69
    .line 70
    const-string v4, ".enc"

    .line 71
    .line 72
    invoke-static {v3, v2, v4}, Lcom/sgscq/vpn/handler/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Lcom/sgscq/vpn/cloud/l0;->b:Ljava/io/File;

    .line 80
    .line 81
    new-instance v4, Ljava/io/File;

    .line 82
    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v1, ".bak"

    .line 96
    .line 97
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iput-object v4, p0, Lcom/sgscq/vpn/cloud/l0;->c:Ljava/io/File;

    .line 108
    .line 109
    new-instance v1, Ljava/io/File;

    .line 110
    .line 111
    const-string v4, "_active"

    .line 112
    .line 113
    invoke-static {v3, v2, v4}, Lcom/sgscq/vpn/handler/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iput-object v1, p0, Lcom/sgscq/vpn/cloud/l0;->d:Ljava/io/File;

    .line 121
    .line 122
    new-instance v1, Ljava/io/File;

    .line 123
    .line 124
    const-string v4, "_staging"

    .line 125
    .line 126
    invoke-static {v3, v2, v4}, Lcom/sgscq/vpn/handler/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iput-object v1, p0, Lcom/sgscq/vpn/cloud/l0;->e:Ljava/io/File;

    .line 134
    .line 135
    new-instance v1, Ljava/io/File;

    .line 136
    .line 137
    const-string v4, "_merge"

    .line 138
    .line 139
    invoke-static {v3, v2, v4}, Lcom/sgscq/vpn/handler/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iput-object v1, p0, Lcom/sgscq/vpn/cloud/l0;->f:Ljava/io/File;

    .line 147
    .line 148
    new-instance v1, Ljava/io/File;

    .line 149
    .line 150
    const-string v4, "_staging_backup"

    .line 151
    .line 152
    invoke-static {v3, v2, v4}, Lcom/sgscq/vpn/handler/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iput-object v1, p0, Lcom/sgscq/vpn/cloud/l0;->g:Ljava/io/File;

    .line 160
    .line 161
    new-instance v1, Ljava/io/File;

    .line 162
    .line 163
    const-string v4, "_backup"

    .line 164
    .line 165
    invoke-static {v3, v2, v4}, Lcom/sgscq/vpn/handler/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iput-object v1, p0, Lcom/sgscq/vpn/cloud/l0;->h:Ljava/io/File;

    .line 173
    .line 174
    new-instance v0, Lc/e;

    .line 175
    .line 176
    invoke-direct {v0, p0, p1}, Lc/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    iput-object v0, p0, Lcom/sgscq/vpn/cloud/l0;->i:Lc/e;

    .line 180
    .line 181
    return-void
.end method

.method public static A(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/sgscq/vpn/cloud/l0;->f(Ljava/io/File;)V

    return-void
.end method

.method public static B(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "[0-9]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u4e91\u7aef\u5bf9\u624b\u6e38\u6807\u65e0\u6548"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static C(Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sgscq/vpn/v5;

    invoke-static {v1, v0}, Lcom/sgscq/vpn/cloud/l0;->D(Lcom/sgscq/vpn/v5;Ljava/util/HashSet;)V

    invoke-virtual {v1}, Lcom/sgscq/vpn/v5;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u4e91\u7aef\u5bf9\u624b\u9635\u5bb9\u65e0\u6548"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public static D(Lcom/sgscq/vpn/v5;Ljava/util/HashSet;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_3

    iget-object v0, p0, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    const-string v1, "cloud_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sgscq/vpn/v5;->b:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget p1, p0, Lcom/sgscq/vpn/v5;->d:I

    if-lez p1, :cond_1

    iget p0, p0, Lcom/sgscq/vpn/v5;->t:I

    if-lez p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u4e91\u7aef\u5bf9\u624b\u9635\u5bb9\u65e0\u6548"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u4e91\u7aef\u5bf9\u624b\u540d\u5b57\u65e0\u6548"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u4e91\u7aef\u5bf9\u624b ID \u91cd\u590d\u6216\u65e0\u6548"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sgscq/vpn/cloud/r;

    invoke-static {v1}, Lcom/sgscq/vpn/v5;->h(Lcom/sgscq/vpn/cloud/r;)Lcom/sgscq/vpn/v5;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/l0;->C(Ljava/util/ArrayList;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/io/File;Ljava/io/File;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ".copy.tmp"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string p1, "\u65e0\u6cd5\u6e05\u7406\u4e91\u7aef\u5bf9\u624b\u589e\u91cf\u4e34\u65f6\u5206\u5305"

    .line 43
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_7

    .line 53
    .line 54
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 55
    .line 56
    new-instance v2, Ljava/io/FileInputStream;

    .line 57
    .line 58
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 62
    .line 63
    .line 64
    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    .line 65
    .line 66
    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 67
    .line 68
    .line 69
    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    .line 70
    .line 71
    invoke-direct {v2, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 72
    .line 73
    .line 74
    const/16 v3, 0x2000

    .line 75
    .line 76
    :try_start_2
    new-array v3, v3, [B

    .line 77
    .line 78
    const-wide/16 v4, 0x0

    .line 79
    .line 80
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-ltz v6, :cond_3

    .line 85
    .line 86
    int-to-long v7, v6

    .line 87
    add-long/2addr v4, v7

    .line 88
    const-wide/32 v7, 0x2000000

    .line 89
    .line 90
    .line 91
    cmp-long v7, v4, v7

    .line 92
    .line 93
    if-gtz v7, :cond_2

    .line 94
    .line 95
    const/4 v7, 0x0

    .line 96
    invoke-virtual {v2, v3, v7, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 101
    .line 102
    const-string v0, "\u4e91\u7aef\u5bf9\u624b\u5206\u5305\u6587\u4ef6\u8fc7\u5927"

    .line 103
    .line 104
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    .line 117
    .line 118
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 119
    .line 120
    .line 121
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    if-eqz p0, :cond_5

    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    if-eqz p0, :cond_4

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 141
    .line 142
    .line 143
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 144
    .line 145
    const-string p1, "\u65e0\u6cd5\u66ff\u6362\u4e91\u7aef\u5bf9\u624b\u589e\u91cf\u5206\u5305"

    .line 146
    .line 147
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p0

    .line 151
    :cond_5
    :goto_2
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    if-eqz p0, :cond_6

    .line 156
    .line 157
    return-void

    .line 158
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 159
    .line 160
    .line 161
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 162
    .line 163
    const-string p1, "\u65e0\u6cd5\u53d1\u5e03\u4e91\u7aef\u5bf9\u624b\u589e\u91cf\u5206\u5305"

    .line 164
    .line 165
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p0

    .line 169
    :catchall_0
    move-exception p1

    .line 170
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :catchall_1
    move-exception v0

    .line 175
    :try_start_6
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 176
    .line 177
    .line 178
    :goto_3
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 179
    :catchall_2
    move-exception p1

    .line 180
    :try_start_7
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 181
    .line 182
    .line 183
    goto :goto_4

    .line 184
    :catchall_3
    move-exception p0

    .line 185
    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    :goto_4
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 189
    :catchall_4
    move-exception p0

    .line 190
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :catchall_5
    move-exception p1

    .line 195
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 196
    .line 197
    .line 198
    :goto_5
    throw p0

    .line 199
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 200
    .line 201
    const-string p1, "\u4e91\u7aef\u5bf9\u624b\u5206\u5305\u7f3a\u5931"

    .line 202
    .line 203
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw p0
.end method

.method public static f(Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/sgscq/vpn/cloud/l0;->f(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "\u65e0\u6cd5\u6e05\u7406\u4e91\u7aef\u5bf9\u624b\u5206\u5305"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g([B)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v1, 0x2000

    :try_start_1
    new-array v1, v1, [B

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v3, v2

    const/high16 v4, 0x2000000

    if-gt v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u4e91\u7aef\u5bf9\u624b\u5206\u5305\u8fc7\u5927"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method public static h(Lcom/sgscq/vpn/cloud/i0;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/i0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sgscq/vpn/cloud/i0;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    if-gt v0, v1, :cond_1

    iget-object p0, p0, Lcom/sgscq/vpn/cloud/i0;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/16 v0, 0x40

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static n(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static o(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    const-string v0, "overlay_[0-9]{20}_[0-9]{5}\\.enc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "overlay_pending_[0-9]{5}\\.enc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u4e91\u7aef\u5bf9\u624b\u589e\u91cf\u5206\u5305\u540d\u79f0\u65e0\u6548"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static s(Ljava/io/File;)[B
    .locals 5

    .line 1
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v1, 0x2000

    :try_start_1
    new-array v1, v1, [B

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v3, v2

    const/high16 v4, 0x2000000

    if-gt v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u4e91\u7aef\u5bf9\u624b\u5206\u5305\u6587\u4ef6\u8fc7\u5927"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method public static z(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/cloud/l0;->A(Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "\u65e0\u6cd5\u521b\u5efa\u4e91\u7aef\u5bf9\u624b\u5206\u5305\u76ee\u5f55"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final E(Ljava/io/File;Lcom/sgscq/vpn/cloud/i0;)V
    .locals 26

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    const-string v2, "manifest.enc"

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x5

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "environment"

    .line 18
    .line 19
    iget-object v4, v0, Lcom/sgscq/vpn/cloud/i0;->a:Ljava/lang/String;

    .line 20
    .line 21
    const-string v5, "pages"

    .line 22
    .line 23
    iget-object v6, v0, Lcom/sgscq/vpn/cloud/i0;->b:Ljava/util/ArrayList;

    .line 24
    .line 25
    const-string v7, "overlay_pages"

    .line 26
    .line 27
    iget-object v8, v0, Lcom/sgscq/vpn/cloud/i0;->c:Ljava/util/ArrayList;

    .line 28
    .line 29
    const-string v9, "pending_overlay_pages"

    .line 30
    .line 31
    iget-object v10, v0, Lcom/sgscq/vpn/cloud/i0;->d:Ljava/util/ArrayList;

    .line 32
    .line 33
    const-string v11, "ids"

    .line 34
    .line 35
    iget-object v12, v0, Lcom/sgscq/vpn/cloud/i0;->e:Ljava/util/ArrayList;

    .line 36
    .line 37
    const-string v13, "next_cursor"

    .line 38
    .line 39
    iget-object v14, v0, Lcom/sgscq/vpn/cloud/i0;->f:Ljava/lang/String;

    .line 40
    .line 41
    const-string v15, "downloaded_count"

    .line 42
    .line 43
    move-object/from16 v25, v1

    .line 44
    .line 45
    iget v1, v0, Lcom/sgscq/vpn/cloud/i0;->g:I

    .line 46
    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v16

    .line 51
    const-string v17, "complete"

    .line 52
    .line 53
    iget-boolean v1, v0, Lcom/sgscq/vpn/cloud/i0;->h:Z

    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v18

    .line 59
    const-string v19, "mode"

    .line 60
    .line 61
    iget-object v1, v0, Lcom/sgscq/vpn/cloud/i0;->i:Ljava/lang/String;

    .line 62
    .line 63
    move-object/from16 v20, v1

    .line 64
    .line 65
    const-string v21, "base_generation"

    .line 66
    .line 67
    move-object/from16 p1, v2

    .line 68
    .line 69
    iget-wide v1, v0, Lcom/sgscq/vpn/cloud/i0;->j:J

    .line 70
    .line 71
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object v22

    .line 75
    const-string v23, "target_generation"

    .line 76
    .line 77
    iget-wide v0, v0, Lcom/sgscq/vpn/cloud/i0;->k:J

    .line 78
    .line 79
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v24

    .line 83
    filled-new-array/range {v3 .. v24}, [Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string v1, "schema_version"

    .line 88
    .line 89
    move-object/from16 v2, p1

    .line 90
    .line 91
    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    move-object/from16 v1, p0

    .line 96
    .line 97
    move-object/from16 v2, v25

    .line 98
    .line 99
    invoke-virtual {v1, v2, v0}, Lcom/sgscq/vpn/cloud/l0;->H(Ljava/io/File;Ljava/util/LinkedHashMap;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final F(Ljava/io/File;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 6

    .line 1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sgscq/vpn/v5;

    invoke-virtual {v0}, Lcom/sgscq/vpn/v5;->v()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "environment"

    iget-object v1, p0, Lcom/sgscq/vpn/cloud/l0;->a:Ljava/lang/String;

    const-string v2, "upserts"

    const-string v4, "deleted_ids"

    move-object v5, p3

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "schema_version"

    invoke-static {v0, p2, p3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sgscq/vpn/cloud/l0;->H(Ljava/io/File;Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method public final G(Ljava/io/File;Ljava/util/List;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sgscq/vpn/v5;

    invoke-virtual {v1}, Lcom/sgscq/vpn/v5;->v()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "snapshots"

    const-string v2, "environment"

    iget-object v3, p0, Lcom/sgscq/vpn/cloud/l0;->a:Ljava/lang/String;

    filled-new-array {v2, v3, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "schema_version"

    invoke-static {v1, p2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sgscq/vpn/cloud/l0;->H(Ljava/io/File;Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method public final H(Ljava/io/File;Ljava/util/LinkedHashMap;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string p2, "\u65e0\u6cd5\u521b\u5efa\u4e91\u7aef\u5bf9\u624b\u5206\u5305\u76ee\u5f55"

    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/l0;->j:La/o;

    .line 27
    .line 28
    invoke-virtual {v0, p2}, La/o;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 40
    .line 41
    .line 42
    :try_start_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 43
    .line 44
    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/l0;->i:Lc/e;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    const/4 v1, 0x2

    .line 64
    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    iget-object v0, v0, Lc/e;->a:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sget-object v1, Lcom/sgscq/vpn/y5;->c:[B

    .line 77
    .line 78
    invoke-static {v0, p2, v1}, Lcom/sgscq/vpn/y5;->i(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 83
    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    new-instance v0, Ljava/io/File;

    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v2, ".tmp"

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    new-instance v1, Ljava/io/File;

    .line 115
    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v3, ".bak"

    .line 129
    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_3

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_2

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 154
    .line 155
    const-string p2, "\u65e0\u6cd5\u6e05\u7406\u4e91\u7aef\u5bf9\u624b\u4e34\u65f6\u5206\u5305"

    .line 156
    .line 157
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p1

    .line 161
    :cond_3
    :goto_1
    new-instance v2, Ljava/io/FileOutputStream;

    .line 162
    .line 163
    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 164
    .line 165
    .line 166
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    .line 167
    .line 168
    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 169
    .line 170
    .line 171
    :try_start_2
    invoke-virtual {v3, p2}, Ljava/io/OutputStream;->write([B)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-virtual {p2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    .line 183
    .line 184
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    if-eqz p2, :cond_5

    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 197
    .line 198
    .line 199
    move-result p2

    .line 200
    if-eqz p2, :cond_4

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 204
    .line 205
    .line 206
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 207
    .line 208
    const-string p2, "\u65e0\u6cd5\u6e05\u7406\u4e91\u7aef\u5bf9\u624b\u5206\u5305\u5907\u4efd"

    .line 209
    .line 210
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw p1

    .line 214
    :cond_5
    :goto_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    if-eqz p2, :cond_7

    .line 219
    .line 220
    invoke-virtual {p1, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-eqz v2, :cond_6

    .line 225
    .line 226
    goto :goto_3

    .line 227
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 228
    .line 229
    .line 230
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 231
    .line 232
    const-string p2, "\u65e0\u6cd5\u5907\u4efd\u4e91\u7aef\u5bf9\u624b\u5206\u5305"

    .line 233
    .line 234
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw p1

    .line 238
    :cond_7
    :goto_3
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-nez v2, :cond_9

    .line 243
    .line 244
    if-eqz p2, :cond_8

    .line 245
    .line 246
    invoke-virtual {v1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 247
    .line 248
    .line 249
    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 250
    .line 251
    .line 252
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 253
    .line 254
    const-string p2, "\u65e0\u6cd5\u66ff\u6362\u4e91\u7aef\u5bf9\u624b\u5206\u5305"

    .line 255
    .line 256
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw p1

    .line 260
    :cond_9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    if-eqz p1, :cond_a

    .line 265
    .line 266
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 267
    .line 268
    .line 269
    :cond_a
    return-void

    .line 270
    :catchall_0
    move-exception p1

    .line 271
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 272
    .line 273
    .line 274
    goto :goto_4

    .line 275
    :catchall_1
    move-exception p2

    .line 276
    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 277
    .line 278
    .line 279
    :goto_4
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 280
    :catchall_2
    move-exception p1

    .line 281
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 282
    .line 283
    .line 284
    goto :goto_5

    .line 285
    :catchall_3
    move-exception p2

    .line 286
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 287
    .line 288
    .line 289
    :goto_5
    throw p1

    .line 290
    :catchall_4
    move-exception p1

    .line 291
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 292
    .line 293
    .line 294
    goto :goto_6

    .line 295
    :catchall_5
    move-exception p2

    .line 296
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 297
    .line 298
    .line 299
    :goto_6
    throw p1
.end method

.method public final declared-synchronized a(J)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, v1, Lcom/sgscq/vpn/cloud/l0;->d:Ljava/io/File;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/cloud/l0;->t(Ljava/io/File;)Lcom/sgscq/vpn/cloud/i0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v10, v0, Lcom/sgscq/vpn/cloud/i0;->h:Z

    .line 13
    .line 14
    if-eqz v10, :cond_0

    .line 15
    .line 16
    iget-wide v2, v0, Lcom/sgscq/vpn/cloud/i0;->k:J

    .line 17
    .line 18
    cmp-long v2, p1, v2

    .line 19
    .line 20
    if-ltz v2, :cond_0

    .line 21
    .line 22
    iget-object v14, v1, Lcom/sgscq/vpn/cloud/l0;->d:Ljava/io/File;

    .line 23
    .line 24
    new-instance v15, Lcom/sgscq/vpn/cloud/i0;

    .line 25
    .line 26
    iget-object v3, v0, Lcom/sgscq/vpn/cloud/i0;->a:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v4, v0, Lcom/sgscq/vpn/cloud/i0;->b:Ljava/util/ArrayList;

    .line 29
    .line 30
    iget-object v5, v0, Lcom/sgscq/vpn/cloud/i0;->c:Ljava/util/ArrayList;

    .line 31
    .line 32
    iget-object v6, v0, Lcom/sgscq/vpn/cloud/i0;->d:Ljava/util/ArrayList;

    .line 33
    .line 34
    iget-object v7, v0, Lcom/sgscq/vpn/cloud/i0;->e:Ljava/util/ArrayList;

    .line 35
    .line 36
    iget-object v8, v0, Lcom/sgscq/vpn/cloud/i0;->f:Ljava/lang/String;

    .line 37
    .line 38
    iget v9, v0, Lcom/sgscq/vpn/cloud/i0;->g:I

    .line 39
    .line 40
    iget-object v11, v0, Lcom/sgscq/vpn/cloud/i0;->i:Ljava/lang/String;

    .line 41
    .line 42
    iget-wide v12, v0, Lcom/sgscq/vpn/cloud/i0;->j:J

    .line 43
    .line 44
    move-object v2, v15

    .line 45
    move-object v0, v14

    .line 46
    move-object/from16 v16, v15

    .line 47
    .line 48
    move-wide/from16 v14, p1

    .line 49
    .line 50
    invoke-direct/range {v2 .. v15}, Lcom/sgscq/vpn/cloud/i0;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IZLjava/lang/String;JJ)V

    .line 51
    .line 52
    .line 53
    move-object/from16 v2, v16

    .line 54
    .line 55
    invoke-virtual {v1, v0, v2}, Lcom/sgscq/vpn/cloud/l0;->E(Ljava/io/File;Lcom/sgscq/vpn/cloud/i0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    const-string v2, "\u4e91\u7aef\u5bf9\u624b\u786e\u8ba4\u4ee3\u6b21\u65e0\u6548"

    .line 63
    .line 64
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    monitor-exit p0

    .line 70
    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/sgscq/vpn/cloud/k0;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/sgscq/vpn/cloud/l0;->y()Lcom/sgscq/vpn/cloud/i0;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string v1, "delta"

    .line 7
    .line 8
    iget-object v2, v0, Lcom/sgscq/vpn/cloud/i0;->i:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_b

    .line 15
    .line 16
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/l0;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p4}, Lcom/sgscq/vpn/cloud/l0;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    iget-boolean v1, v0, Lcom/sgscq/vpn/cloud/i0;->h:Z

    .line 25
    .line 26
    if-nez v1, :cond_a

    .line 27
    .line 28
    iget-object v1, v0, Lcom/sgscq/vpn/cloud/i0;->f:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_9

    .line 35
    .line 36
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string p2, "\u4e91\u7aef\u5bf9\u624b\u5206\u9875\u6e38\u6807\u672a\u63a8\u8fdb"

    .line 52
    .line 53
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/sgscq/vpn/cloud/l0;->d(Ljava/util/List;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance p2, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    if-nez p3, :cond_2

    .line 67
    .line 68
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_6

    .line 81
    .line 82
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Ljava/lang/String;

    .line 87
    .line 88
    if-nez v1, :cond_3

    .line 89
    .line 90
    const-string v1, ""

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-nez v2, :cond_5

    .line 102
    .line 103
    const-string v2, "cloud_"

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_4

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v3, "cloud_"

    .line 118
    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    :goto_3
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 134
    .line 135
    const-string p2, "\u4e91\u7aef\u5bf9\u624b\u5220\u9664 ID \u65e0\u6548"

    .line 136
    .line 137
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p1

    .line 141
    :cond_6
    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 142
    .line 143
    const-string v1, "overlay_pending_%05d.enc"

    .line 144
    .line 145
    const/4 v2, 0x1

    .line 146
    new-array v2, v2, [Ljava/lang/Object;

    .line 147
    .line 148
    iget-object v3, v0, Lcom/sgscq/vpn/cloud/i0;->d:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    const/4 v4, 0x0

    .line 159
    aput-object v3, v2, v4

    .line 160
    .line 161
    invoke-static {p3, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p3

    .line 165
    iget-object v1, p0, Lcom/sgscq/vpn/cloud/l0;->e:Ljava/io/File;

    .line 166
    .line 167
    invoke-static {v1, p3}, Lcom/sgscq/vpn/cloud/l0;->o(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {p0, v1, p1, p2}, Lcom/sgscq/vpn/cloud/l0;->F(Ljava/io/File;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 172
    .line 173
    .line 174
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 175
    .line 176
    iget-object v2, v0, Lcom/sgscq/vpn/cloud/i0;->e:Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-eqz v3, :cond_7

    .line 190
    .line 191
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    check-cast v3, Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    if-eqz v3, :cond_8

    .line 210
    .line 211
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    check-cast v3, Lcom/sgscq/vpn/v5;

    .line 216
    .line 217
    iget-object v3, v3, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 228
    .line 229
    .line 230
    move-result p2

    .line 231
    add-int/2addr p1, p2

    .line 232
    new-instance p2, Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, p1, p3, p4, p2}, Lcom/sgscq/vpn/cloud/i0;->f(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/sgscq/vpn/cloud/i0;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    iget-object p2, p0, Lcom/sgscq/vpn/cloud/l0;->e:Ljava/io/File;

    .line 242
    .line 243
    invoke-virtual {p0, p2, p1}, Lcom/sgscq/vpn/cloud/l0;->E(Ljava/io/File;Lcom/sgscq/vpn/cloud/i0;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1}, Lcom/sgscq/vpn/cloud/i0;->d()Lcom/sgscq/vpn/cloud/k0;

    .line 247
    .line 248
    .line 249
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    monitor-exit p0

    .line 251
    return-object p1

    .line 252
    :cond_9
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 253
    .line 254
    const-string p2, "\u4e91\u7aef\u5bf9\u624b\u65ad\u70b9\u6e38\u6807\u4e0d\u5339\u914d"

    .line 255
    .line 256
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw p1

    .line 260
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 261
    .line 262
    const-string p2, "\u4e91\u7aef\u5bf9\u624b\u589e\u91cf\u5df2\u4e0b\u8f7d\u5b8c\u6210"

    .line 263
    .line 264
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw p1

    .line 268
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 269
    .line 270
    const-string p2, "\u4e91\u7aef\u5bf9\u624b\u540c\u6b65\u6a21\u5f0f\u4e0d\u5339\u914d"

    .line 271
    .line 272
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    :catchall_0
    move-exception p1

    .line 277
    monitor-exit p0

    .line 278
    throw p1
.end method

.method public final declared-synchronized c(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/sgscq/vpn/cloud/k0;
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/sgscq/vpn/cloud/l0;->y()Lcom/sgscq/vpn/cloud/i0;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string v1, "full"

    .line 7
    .line 8
    iget-object v2, v0, Lcom/sgscq/vpn/cloud/i0;->i:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_6

    .line 15
    .line 16
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/l0;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p2}, Lcom/sgscq/vpn/cloud/l0;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iget-boolean v1, v0, Lcom/sgscq/vpn/cloud/i0;->h:Z

    .line 25
    .line 26
    if-nez v1, :cond_5

    .line 27
    .line 28
    iget-object v1, v0, Lcom/sgscq/vpn/cloud/i0;->f:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_4

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string p2, "\u4e91\u7aef\u5bf9\u624b\u5206\u9875\u6e38\u6807\u672a\u63a8\u8fdb"

    .line 52
    .line 53
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_1
    :goto_0
    invoke-static {p3}, Lcom/sgscq/vpn/cloud/l0;->d(Ljava/util/List;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance p3, Ljava/util/HashSet;

    .line 62
    .line 63
    iget-object v1, v0, Lcom/sgscq/vpn/cloud/i0;->e:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {p3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Lcom/sgscq/vpn/v5;

    .line 88
    .line 89
    iget-object v4, v3, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {p3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_2

    .line 96
    .line 97
    iget-object v3, v3, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 104
    .line 105
    const-string p2, "\u4e91\u7aef\u5bf9\u624b ID \u8de8\u9875\u91cd\u590d"

    .line 106
    .line 107
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p1

    .line 111
    :cond_3
    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 112
    .line 113
    const-string v2, "page_%05d.enc"

    .line 114
    .line 115
    const/4 v3, 0x1

    .line 116
    new-array v3, v3, [Ljava/lang/Object;

    .line 117
    .line 118
    iget-object v4, v0, Lcom/sgscq/vpn/cloud/i0;->b:Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    const/4 v5, 0x0

    .line 129
    aput-object v4, v3, v5

    .line 130
    .line 131
    invoke-static {p3, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p3

    .line 135
    new-instance v2, Ljava/io/File;

    .line 136
    .line 137
    iget-object v3, p0, Lcom/sgscq/vpn/cloud/l0;->e:Ljava/io/File;

    .line 138
    .line 139
    invoke-direct {v2, v3, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v2, p1}, Lcom/sgscq/vpn/cloud/l0;->G(Ljava/io/File;Ljava/util/List;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, p3, p2, v1}, Lcom/sgscq/vpn/cloud/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/sgscq/vpn/cloud/i0;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iget-object p2, p0, Lcom/sgscq/vpn/cloud/l0;->e:Ljava/io/File;

    .line 150
    .line 151
    invoke-virtual {p0, p2, p1}, Lcom/sgscq/vpn/cloud/l0;->E(Ljava/io/File;Lcom/sgscq/vpn/cloud/i0;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/sgscq/vpn/cloud/i0;->d()Lcom/sgscq/vpn/cloud/k0;

    .line 155
    .line 156
    .line 157
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    .line 159
    return-object p1

    .line 160
    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 161
    .line 162
    const-string p2, "\u4e91\u7aef\u5bf9\u624b\u65ad\u70b9\u6e38\u6807\u4e0d\u5339\u914d"

    .line 163
    .line 164
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p1

    .line 168
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 169
    .line 170
    const-string p2, "\u4e91\u7aef\u5bf9\u624b\u5206\u5305\u5df2\u4e0b\u8f7d\u5b8c\u6210"

    .line 171
    .line 172
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p1

    .line 176
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 177
    .line 178
    const-string p2, "\u4e91\u7aef\u5bf9\u624b\u540c\u6b65\u6a21\u5f0f\u4e0d\u5339\u914d"

    .line 179
    .line 180
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    :catchall_0
    move-exception p1

    .line 185
    monitor-exit p0

    .line 186
    throw p1
.end method

.method public final declared-synchronized i()Ljava/util/List;
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/l0;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/l0;->d:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/cloud/l0;->l(Ljava/io/File;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/l0;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/l0;->h:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/cloud/l0;->l(Ljava/io/File;)Ljava/util/List;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_1
    :cond_1
    :try_start_4
    invoke-virtual {p0}, Lcom/sgscq/vpn/cloud/l0;->j()Ljava/util/List;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_2
    :try_start_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j()Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/l0;->b:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/l0;->c:Ljava/io/File;

    .line 11
    .line 12
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :cond_1
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/l0;->s(Ljava/io/File;)[B

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/String;

    .line 28
    .line 29
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 30
    .line 31
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/l0;->i:Lc/e;

    .line 35
    .line 36
    iget-object v0, v0, Lc/e;->a:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sget-object v2, Lcom/sgscq/vpn/y5;->c:[B

    .line 45
    .line 46
    invoke-static {v0, v1, v2}, Lcom/sgscq/vpn/y5;->c(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/l0;->g([B)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/sgscq/vpn/cloud/l0;->j:La/o;

    .line 60
    .line 61
    const-class v2, Ljava/util/Map;

    .line 62
    .line 63
    invoke-virtual {v1, v0, v2}, La/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Ljava/util/Map;

    .line 68
    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    const-string v1, "schema_version"

    .line 72
    .line 73
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v1}, Lcom/sgscq/vpn/cloud/l0;->n(Ljava/lang/Object;)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    const/4 v2, 0x1

    .line 82
    if-ne v1, v2, :cond_6

    .line 83
    .line 84
    const-string v1, "environment"

    .line 85
    .line 86
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/sgscq/vpn/cloud/l0;->a:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_2

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_2
    const-string v1, "snapshots"

    .line 104
    .line 105
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    instance-of v1, v0, Ljava/util/List;

    .line 110
    .line 111
    if-nez v1, :cond_3

    .line 112
    .line 113
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    return-object v0

    .line 118
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .line 122
    .line 123
    check-cast v0, Ljava/util/List;

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_5

    .line 134
    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    instance-of v3, v2, Ljava/util/Map;

    .line 140
    .line 141
    if-nez v3, :cond_4

    .line 142
    .line 143
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    return-object v0

    .line 148
    :cond_4
    check-cast v2, Ljava/util/Map;

    .line 149
    .line 150
    invoke-static {v2}, Lcom/sgscq/vpn/v5;->i(Ljava/util/Map;)Lcom/sgscq/vpn/v5;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_5
    invoke-static {v1}, Lcom/sgscq/vpn/cloud/l0;->C(Ljava/util/ArrayList;)V

    .line 159
    .line 160
    .line 161
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    return-object v0

    .line 166
    :cond_6
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    return-object v0
.end method

.method public final declared-synchronized k(Ljava/io/File;Ljava/lang/String;)Lcom/sgscq/vpn/v5;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/sgscq/vpn/cloud/l0;->k:Lcom/sgscq/vpn/s5;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/util/List;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/cloud/l0;->u(Ljava/io/File;)Lcom/sgscq/vpn/cloud/j0;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v1, p1, Lcom/sgscq/vpn/cloud/j0;->a:Ljava/util/List;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/sgscq/vpn/cloud/l0;->k:Lcom/sgscq/vpn/s5;

    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/sgscq/vpn/v5;

    .line 42
    .line 43
    iget-object v1, v0, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    monitor-exit p0

    .line 52
    return-object v0

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    monitor-exit p0

    .line 55
    throw p1

    .line 56
    :catch_0
    :cond_2
    monitor-exit p0

    .line 57
    const/4 p1, 0x0

    .line 58
    return-object p1
.end method

.method public final l(Ljava/io/File;)Ljava/util/List;
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/cloud/l0;->t(Ljava/io/File;)Lcom/sgscq/vpn/cloud/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/sgscq/vpn/cloud/i0;->h:Z

    .line 8
    .line 9
    if-eqz v1, :cond_9

    .line 10
    .line 11
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v2, v0, Lcom/sgscq/vpn/cloud/i0;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_3

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    const-string v4, "page_[0-9]{5}\\.enc"

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    new-instance v4, Ljava/io/File;

    .line 45
    .line 46
    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v4}, Lcom/sgscq/vpn/cloud/l0;->v(Ljava/io/File;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_0

    .line 62
    .line 63
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Lcom/sgscq/vpn/v5;

    .line 68
    .line 69
    iget-object v6, v5, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v1, v6}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-nez v6, :cond_1

    .line 76
    .line 77
    new-instance v6, Lcom/sgscq/vpn/cloud/h0;

    .line 78
    .line 79
    iget-object v7, v5, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 80
    .line 81
    const/4 v8, 0x0

    .line 82
    invoke-direct {v6, p0, v4, v7, v8}, Lcom/sgscq/vpn/cloud/h0;-><init>(Lcom/sgscq/vpn/cloud/l0;Ljava/io/File;Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v6}, Lcom/sgscq/vpn/v5;->a(Lcom/sgscq/vpn/cloud/h0;)Lcom/sgscq/vpn/v5;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v1, v7, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    const-string v0, "\u4e91\u7aef\u5bf9\u624b ID \u8de8\u9875\u91cd\u590d"

    .line 96
    .line 97
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    const-string v0, "\u4e91\u7aef\u5bf9\u624b\u5206\u5305\u540d\u79f0\u65e0\u6548"

    .line 104
    .line 105
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p1

    .line 109
    :cond_3
    iget-object v2, v0, Lcom/sgscq/vpn/cloud/i0;->c:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-eqz v3, :cond_6

    .line 120
    .line 121
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    check-cast v3, Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {p1, v3}, Lcom/sgscq/vpn/cloud/l0;->o(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {p0, v3}, Lcom/sgscq/vpn/cloud/l0;->u(Ljava/io/File;)Lcom/sgscq/vpn/cloud/j0;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    iget-object v5, v4, Lcom/sgscq/vpn/cloud/j0;->b:Ljava/util/List;

    .line 136
    .line 137
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_5

    .line 146
    .line 147
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    check-cast v6, Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v1, v6}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_5
    iget-object v4, v4, Lcom/sgscq/vpn/cloud/j0;->a:Ljava/util/List;

    .line 158
    .line 159
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    if-eqz v5, :cond_4

    .line 168
    .line 169
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    check-cast v5, Lcom/sgscq/vpn/v5;

    .line 174
    .line 175
    iget-object v6, v5, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 176
    .line 177
    new-instance v7, Lcom/sgscq/vpn/cloud/h0;

    .line 178
    .line 179
    const/4 v8, 0x1

    .line 180
    invoke-direct {v7, p0, v3, v6, v8}, Lcom/sgscq/vpn/cloud/h0;-><init>(Lcom/sgscq/vpn/cloud/l0;Ljava/io/File;Ljava/lang/String;I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v5, v7}, Lcom/sgscq/vpn/v5;->a(Lcom/sgscq/vpn/cloud/h0;)Lcom/sgscq/vpn/v5;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-virtual {v1, v6, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, v0, Lcom/sgscq/vpn/cloud/i0;->e:Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-eqz p1, :cond_8

    .line 207
    .line 208
    new-instance p1, Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 215
    .line 216
    .line 217
    new-instance v0, Ljava/util/HashSet;

    .line 218
    .line 219
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    if-eqz v2, :cond_7

    .line 231
    .line 232
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    check-cast v2, Lcom/sgscq/vpn/v5;

    .line 237
    .line 238
    invoke-static {v2, v0}, Lcom/sgscq/vpn/cloud/l0;->D(Lcom/sgscq/vpn/v5;Ljava/util/HashSet;)V

    .line 239
    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_7
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    return-object p1

    .line 247
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 248
    .line 249
    const-string v0, "\u4e91\u7aef\u5bf9\u624b\u5206\u5305\u6570\u91cf\u4e0d\u4e00\u81f4"

    .line 250
    .line 251
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw p1

    .line 255
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 256
    .line 257
    const-string v0, "\u4e91\u7aef\u5bf9\u624b\u5206\u5305\u6e05\u5355\u4e0d\u5b8c\u6574"

    .line 258
    .line 259
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw p1
.end method

.method public final m(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashSet;Lcom/sgscq/vpn/cloud/j0;Ljava/io/File;)V
    .locals 4

    .line 1
    iget-object v0, p3, Lcom/sgscq/vpn/cloud/j0;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p3, p3, Lcom/sgscq/vpn/cloud/j0;->a:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/sgscq/vpn/v5;

    .line 43
    .line 44
    iget-object v1, v0, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p2, v1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    new-instance v1, Lcom/sgscq/vpn/cloud/h0;

    .line 50
    .line 51
    iget-object v2, v0, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 52
    .line 53
    const/4 v3, 0x2

    .line 54
    invoke-direct {v1, p0, p4, v2, v3}, Lcom/sgscq/vpn/cloud/h0;-><init>(Lcom/sgscq/vpn/cloud/l0;Ljava/io/File;Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/v5;->a(Lcom/sgscq/vpn/cloud/h0;)Lcom/sgscq/vpn/v5;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1, v2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    return-void
.end method

.method public final declared-synchronized p()Lcom/sgscq/vpn/cloud/u;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/cloud/l0;->y()Lcom/sgscq/vpn/cloud/i0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v2, "delta"

    .line 9
    .line 10
    iget-object v3, v0, Lcom/sgscq/vpn/cloud/i0;->i:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    iget-boolean v2, v0, Lcom/sgscq/vpn/cloud/i0;->h:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v2, v1, Lcom/sgscq/vpn/cloud/l0;->d:Ljava/io/File;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/cloud/l0;->t(Ljava/io/File;)Lcom/sgscq/vpn/cloud/i0;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iget-boolean v3, v2, Lcom/sgscq/vpn/cloud/i0;->h:Z

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    iget-wide v3, v2, Lcom/sgscq/vpn/cloud/i0;->k:J

    .line 35
    .line 36
    iget-wide v5, v0, Lcom/sgscq/vpn/cloud/i0;->j:J

    .line 37
    .line 38
    cmp-long v3, v3, v5

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 48
    .line 49
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v8, Ljava/util/ArrayList;

    .line 53
    .line 54
    iget-object v5, v2, Lcom/sgscq/vpn/cloud/i0;->c:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 57
    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    move v6, v5

    .line 61
    :goto_0
    iget-object v7, v0, Lcom/sgscq/vpn/cloud/i0;->d:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    const/4 v15, 0x1

    .line 68
    if-ge v6, v7, :cond_0

    .line 69
    .line 70
    iget-object v7, v0, Lcom/sgscq/vpn/cloud/i0;->d:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    check-cast v7, Ljava/lang/String;

    .line 77
    .line 78
    iget-object v9, v1, Lcom/sgscq/vpn/cloud/l0;->e:Ljava/io/File;

    .line 79
    .line 80
    invoke-static {v9, v7}, Lcom/sgscq/vpn/cloud/l0;->o(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-virtual {v1, v7}, Lcom/sgscq/vpn/cloud/l0;->u(Ljava/io/File;)Lcom/sgscq/vpn/cloud/j0;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 89
    .line 90
    const-string v11, "overlay_%020d_%05d.enc"

    .line 91
    .line 92
    const/4 v12, 0x2

    .line 93
    new-array v12, v12, [Ljava/lang/Object;

    .line 94
    .line 95
    iget-wide v13, v0, Lcom/sgscq/vpn/cloud/i0;->k:J

    .line 96
    .line 97
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object v13

    .line 101
    aput-object v13, v12, v5

    .line 102
    .line 103
    iget-object v13, v2, Lcom/sgscq/vpn/cloud/i0;->c:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 106
    .line 107
    .line 108
    move-result v13

    .line 109
    add-int/2addr v13, v6

    .line 110
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v13

    .line 114
    aput-object v13, v12, v15

    .line 115
    .line 116
    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    iget-object v11, v1, Lcom/sgscq/vpn/cloud/l0;->d:Ljava/io/File;

    .line 121
    .line 122
    invoke-static {v11, v10}, Lcom/sgscq/vpn/cloud/l0;->o(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    invoke-static {v7, v11}, Lcom/sgscq/vpn/cloud/l0;->e(Ljava/io/File;Ljava/io/File;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v3, v4, v9, v11}, Lcom/sgscq/vpn/cloud/l0;->m(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashSet;Lcom/sgscq/vpn/cloud/j0;Ljava/io/File;)V

    .line 133
    .line 134
    .line 135
    add-int/lit8 v6, v6, 0x1

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_0
    new-instance v2, Lcom/sgscq/vpn/cloud/i0;

    .line 139
    .line 140
    iget-object v6, v0, Lcom/sgscq/vpn/cloud/i0;->a:Ljava/lang/String;

    .line 141
    .line 142
    iget-object v7, v0, Lcom/sgscq/vpn/cloud/i0;->b:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    iget-object v10, v0, Lcom/sgscq/vpn/cloud/i0;->e:Ljava/util/ArrayList;

    .line 149
    .line 150
    const-string v11, ""

    .line 151
    .line 152
    iget v12, v0, Lcom/sgscq/vpn/cloud/i0;->g:I

    .line 153
    .line 154
    const-string v14, "delta"

    .line 155
    .line 156
    move-object/from16 v16, v14

    .line 157
    .line 158
    iget-wide v13, v0, Lcom/sgscq/vpn/cloud/i0;->j:J

    .line 159
    .line 160
    move-wide/from16 v17, v13

    .line 161
    .line 162
    iget-wide v13, v0, Lcom/sgscq/vpn/cloud/i0;->k:J

    .line 163
    .line 164
    const/4 v0, 0x1

    .line 165
    move-object v5, v2

    .line 166
    move-wide/from16 v19, v13

    .line 167
    .line 168
    move v13, v0

    .line 169
    move-object/from16 v14, v16

    .line 170
    .line 171
    move v0, v15

    .line 172
    move-wide/from16 v15, v17

    .line 173
    .line 174
    move-wide/from16 v17, v19

    .line 175
    .line 176
    invoke-direct/range {v5 .. v18}, Lcom/sgscq/vpn/cloud/i0;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IZLjava/lang/String;JJ)V

    .line 177
    .line 178
    .line 179
    iget-object v5, v1, Lcom/sgscq/vpn/cloud/l0;->d:Ljava/io/File;

    .line 180
    .line 181
    invoke-virtual {v1, v5, v2}, Lcom/sgscq/vpn/cloud/l0;->E(Ljava/io/File;Lcom/sgscq/vpn/cloud/i0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .line 183
    .line 184
    :try_start_1
    iget-object v5, v1, Lcom/sgscq/vpn/cloud/l0;->e:Ljava/io/File;

    .line 185
    .line 186
    invoke-static {v5}, Lcom/sgscq/vpn/cloud/l0;->A(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    .line 188
    .line 189
    :catch_0
    :try_start_2
    iget-object v5, v1, Lcom/sgscq/vpn/cloud/l0;->k:Lcom/sgscq/vpn/s5;

    .line 190
    .line 191
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->clear()V

    .line 192
    .line 193
    .line 194
    new-instance v5, Lcom/sgscq/vpn/cloud/u;

    .line 195
    .line 196
    new-instance v6, Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 203
    .line 204
    .line 205
    new-instance v3, Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 208
    .line 209
    .line 210
    iget-object v2, v2, Lcom/sgscq/vpn/cloud/i0;->e:Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    invoke-direct {v5, v2, v0, v6, v3}, Lcom/sgscq/vpn/cloud/u;-><init>(IILjava/util/List;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    .line 218
    .line 219
    monitor-exit p0

    .line 220
    return-object v5

    .line 221
    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 222
    .line 223
    const-string v2, "\u4e91\u7aef\u5bf9\u624b\u589e\u91cf\u57fa\u7840\u4ee3\u6b21\u5df2\u53d8\u5316"

    .line 224
    .line 225
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v0

    .line 229
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 230
    .line 231
    const-string v2, "\u4e91\u7aef\u5bf9\u624b\u589e\u91cf\u5c1a\u672a\u4e0b\u8f7d\u5b8c\u6210"

    .line 232
    .line 233
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    :catchall_0
    move-exception v0

    .line 238
    monitor-exit p0

    .line 239
    throw v0
.end method

.method public final declared-synchronized q()Ljava/util/List;
    .locals 3

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sgscq/vpn/cloud/l0;->y()Lcom/sgscq/vpn/cloud/i0;

    move-result-object v0

    const-string v1, "delta"

    iget-object v2, v0, Lcom/sgscq/vpn/cloud/i0;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sgscq/vpn/cloud/l0;->p()Lcom/sgscq/vpn/cloud/u;

    invoke-virtual {p0}, Lcom/sgscq/vpn/cloud/l0;->i()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-boolean v0, v0, Lcom/sgscq/vpn/cloud/i0;->h:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sgscq/vpn/cloud/l0;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    iget-object v1, p0, Lcom/sgscq/vpn/cloud/l0;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u65e0\u6cd5\u53d1\u5e03\u4e91\u7aef\u5bf9\u624b\u5206\u5305"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sgscq/vpn/cloud/l0;->h:Ljava/io/File;

    invoke-static {v1}, Lcom/sgscq/vpn/cloud/l0;->A(Ljava/io/File;)V

    iget-object v1, p0, Lcom/sgscq/vpn/cloud/l0;->d:Ljava/io/File;

    iget-object v2, p0, Lcom/sgscq/vpn/cloud/l0;->h:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u65e0\u6cd5\u5907\u4efd\u65e7\u4e91\u7aef\u5bf9\u624b\u5206\u5305"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/sgscq/vpn/cloud/l0;->e:Ljava/io/File;

    iget-object v2, p0, Lcom/sgscq/vpn/cloud/l0;->d:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sgscq/vpn/cloud/l0;->h:Ljava/io/File;

    iget-object v1, p0, Lcom/sgscq/vpn/cloud/l0;->d:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u65e0\u6cd5\u53d1\u5e03\u4e91\u7aef\u5bf9\u624b\u5206\u5305"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v1, p0, Lcom/sgscq/vpn/cloud/l0;->k:Lcom/sgscq/vpn/s5;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/sgscq/vpn/cloud/l0;->d:Ljava/io/File;

    invoke-virtual {p0, v1}, Lcom/sgscq/vpn/cloud/l0;->l(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sgscq/vpn/cloud/l0;->h:Ljava/io/File;

    invoke-static {v2}, Lcom/sgscq/vpn/cloud/l0;->A(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/sgscq/vpn/cloud/l0;->d:Ljava/io/File;

    invoke-static {v2}, Lcom/sgscq/vpn/cloud/l0;->A(Ljava/io/File;)V

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sgscq/vpn/cloud/l0;->h:Ljava/io/File;

    iget-object v2, p0, Lcom/sgscq/vpn/cloud/l0;->d:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_7
    throw v1

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u4e91\u7aef\u5bf9\u624b\u5206\u5305\u5c1a\u672a\u4e0b\u8f7d\u5b8c\u6210"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized r()I
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/l0;->d:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/cloud/l0;->t(Ljava/io/File;)Lcom/sgscq/vpn/cloud/i0;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/sgscq/vpn/cloud/i0;->h:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/sgscq/vpn/cloud/i0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final t(Ljava/io/File;)Lcom/sgscq/vpn/cloud/i0;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 10
    .line 11
    const-string v2, "manifest.enc"

    .line 12
    .line 13
    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/cloud/l0;->w(Ljava/io/File;)Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/l0;->a:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0, p1}, Lcom/sgscq/vpn/cloud/i0;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/i0;

    .line 23
    .line 24
    .line 25
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return-object p1

    .line 27
    :catch_0
    return-object v1
.end method

.method public final u(Ljava/io/File;)Lcom/sgscq/vpn/cloud/j0;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/cloud/l0;->w(Ljava/io/File;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "schema_version"

    .line 6
    .line 7
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/l0;->n(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x5

    .line 16
    if-ne v0, v1, :cond_5

    .line 17
    .line 18
    const-string v0, "environment"

    .line 19
    .line 20
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/sgscq/vpn/cloud/l0;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_5

    .line 35
    .line 36
    const-string v0, "upserts"

    .line 37
    .line 38
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "deleted_ids"

    .line 43
    .line 44
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    instance-of v1, v0, Ljava/util/List;

    .line 49
    .line 50
    const-string v2, "\u4e91\u7aef\u5bf9\u624b\u589e\u91cf\u5206\u5305\u5185\u5bb9\u65e0\u6548"

    .line 51
    .line 52
    if-eqz v1, :cond_4

    .line 53
    .line 54
    instance-of v1, p1, Ljava/util/List;

    .line 55
    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    new-instance v1, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    check-cast v0, Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_1

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    instance-of v4, v3, Ljava/util/Map;

    .line 80
    .line 81
    if-eqz v4, :cond_0

    .line 82
    .line 83
    check-cast v3, Ljava/util/Map;

    .line 84
    .line 85
    invoke-static {v3}, Lcom/sgscq/vpn/v5;->i(Ljava/util/Map;)Lcom/sgscq/vpn/v5;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_1
    invoke-static {v1}, Lcom/sgscq/vpn/cloud/l0;->C(Ljava/util/ArrayList;)V

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/i0;->e(Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_3

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, Ljava/lang/String;

    .line 121
    .line 122
    const-string v3, "cloud_"

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_2

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 132
    .line 133
    const-string v0, "\u4e91\u7aef\u5bf9\u624b\u5220\u9664 ID \u65e0\u6548"

    .line 134
    .line 135
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p1

    .line 139
    :cond_3
    new-instance v0, Lcom/sgscq/vpn/cloud/j0;

    .line 140
    .line 141
    invoke-direct {v0, v1, p1}, Lcom/sgscq/vpn/cloud/j0;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 142
    .line 143
    .line 144
    return-object v0

    .line 145
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 146
    .line 147
    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p1

    .line 151
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 152
    .line 153
    const-string v0, "\u4e91\u7aef\u5bf9\u624b\u589e\u91cf\u5206\u5305\u73af\u5883\u65e0\u6548"

    .line 154
    .line 155
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p1
.end method

.method public final v(Ljava/io/File;)Ljava/util/List;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/cloud/l0;->w(Ljava/io/File;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "schema_version"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/cloud/l0;->n(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    const/4 v1, 0x5

    if-gt v0, v1, :cond_3

    const-string v0, "environment"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sgscq/vpn/cloud/l0;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "snapshots"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/List;

    const-string v1, "\u4e91\u7aef\u5bf9\u624b\u5206\u5305\u5185\u5bb9\u65e0\u6548"

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Lcom/sgscq/vpn/v5;->i(Ljava/util/Map;)Lcom/sgscq/vpn/v5;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/l0;->C(Ljava/util/ArrayList;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u4e91\u7aef\u5bf9\u624b\u5206\u5305\u73af\u5883\u65e0\u6548"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final w(Ljava/io/File;)Ljava/util/Map;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, ".bak"

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    move-object p1, v0

    .line 35
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/l0;->s(Ljava/io/File;)[B

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Ljava/lang/String;

    .line 46
    .line 47
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 48
    .line 49
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/sgscq/vpn/cloud/l0;->i:Lc/e;

    .line 53
    .line 54
    iget-object p1, p1, Lc/e;->a:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    sget-object v1, Lcom/sgscq/vpn/y5;->c:[B

    .line 63
    .line 64
    invoke-static {p1, v0, v1}, Lcom/sgscq/vpn/y5;->c(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const/4 v0, 0x0

    .line 69
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/l0;->g([B)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/l0;->j:La/o;

    .line 78
    .line 79
    const-class v1, Ljava/util/Map;

    .line 80
    .line 81
    invoke-virtual {v0, p1, v1}, La/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Ljava/util/Map;

    .line 86
    .line 87
    if-eqz p1, :cond_1

    .line 88
    .line 89
    return-object p1

    .line 90
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    const-string v0, "\u4e91\u7aef\u5bf9\u624b\u5206\u5305\u4e3a\u7a7a"

    .line 93
    .line 94
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    const-string v0, "\u4e91\u7aef\u5bf9\u624b\u5206\u5305\u7f3a\u5931"

    .line 101
    .line 102
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1
.end method

.method public final x()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/l0;->e:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/cloud/l0;->t(Ljava/io/File;)Lcom/sgscq/vpn/cloud/i0;

    move-result-object v1

    iget-object v2, p0, Lcom/sgscq/vpn/cloud/l0;->g:Ljava/io/File;

    iget-object v3, p0, Lcom/sgscq/vpn/cloud/l0;->f:Ljava/io/File;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/sgscq/vpn/cloud/l0;->h(Lcom/sgscq/vpn/cloud/i0;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    invoke-static {v3}, Lcom/sgscq/vpn/cloud/l0;->A(Ljava/io/File;)V

    invoke-static {v2}, Lcom/sgscq/vpn/cloud/l0;->A(Ljava/io/File;)V

    return-void

    :cond_1
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/l0;->A(Ljava/io/File;)V

    :cond_2
    invoke-virtual {p0, v3}, Lcom/sgscq/vpn/cloud/l0;->t(Ljava/io/File;)Lcom/sgscq/vpn/cloud/i0;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v1}, Lcom/sgscq/vpn/cloud/l0;->h(Lcom/sgscq/vpn/cloud/i0;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/sgscq/vpn/cloud/l0;->A(Ljava/io/File;)V

    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/sgscq/vpn/cloud/l0;->A(Ljava/io/File;)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u65e0\u6cd5\u6062\u590d\u4e91\u7aef\u5bf9\u624b\u589e\u91cf\u65ad\u70b9"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {v3}, Lcom/sgscq/vpn/cloud/l0;->A(Ljava/io/File;)V

    :cond_5
    invoke-virtual {p0, v2}, Lcom/sgscq/vpn/cloud/l0;->t(Ljava/io/File;)Lcom/sgscq/vpn/cloud/i0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/sgscq/vpn/cloud/l0;->h(Lcom/sgscq/vpn/cloud/i0;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v0}, Lcom/sgscq/vpn/cloud/l0;->A(Ljava/io/File;)V

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v3}, Lcom/sgscq/vpn/cloud/l0;->A(Ljava/io/File;)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u65e0\u6cd5\u6062\u590d\u4e91\u7aef\u5bf9\u624b\u589e\u91cf\u5907\u4efd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-static {v2}, Lcom/sgscq/vpn/cloud/l0;->A(Ljava/io/File;)V

    goto :goto_0
.end method

.method public final y()Lcom/sgscq/vpn/cloud/i0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/l0;->e:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/cloud/l0;->t(Ljava/io/File;)Lcom/sgscq/vpn/cloud/i0;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u4e91\u7aef\u5bf9\u624b\u65ad\u70b9\u6e05\u5355\u7f3a\u5931"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
