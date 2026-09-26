.class public Lh/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Ljava/io/Reader;

.field public b:Z

.field public final c:[C

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:J

.field public j:I

.field public k:Ljava/lang/String;

.field public l:[I

.field public m:I

.field public n:[Ljava/lang/String;

.field public o:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, La/w;

    invoke-direct {v0}, La/w;-><init>()V

    sput-object v0, La/w;->b:La/w;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/a;->b:Z

    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Lh/a;->c:[C

    iput v0, p0, Lh/a;->d:I

    iput v0, p0, Lh/a;->e:I

    iput v0, p0, Lh/a;->f:I

    iput v0, p0, Lh/a;->g:I

    iput v0, p0, Lh/a;->h:I

    const/16 v1, 0x20

    new-array v2, v1, [I

    iput-object v2, p0, Lh/a;->l:[I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lh/a;->m:I

    const/4 v3, 0x6

    aput v3, v2, v0

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lh/a;->n:[Ljava/lang/String;

    new-array v0, v1, [I

    iput-object v0, p0, Lh/a;->o:[I

    const-string v0, "in == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lh/a;->a:Ljava/io/Reader;

    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 3

    .line 1
    iget v0, p0, Lh/a;->m:I

    iget-object v1, p0, Lh/a;->l:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lh/a;->l:[I

    iget-object v1, p0, Lh/a;->o:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lh/a;->o:[I

    iget-object v1, p0, Lh/a;->n:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lh/a;->n:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lh/a;->l:[I

    iget v1, p0, Lh/a;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lh/a;->m:I

    aput p1, v0, v1

    return-void
.end method

.method public final B()C
    .locals 9

    .line 1
    iget v0, p0, Lh/a;->d:I

    iget v1, p0, Lh/a;->e:I

    const/4 v2, 0x0

    const-string v3, "Unterminated escape sequence"

    const/4 v4, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v4}, Lh/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lh/a;->G(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    iget v0, p0, Lh/a;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lh/a;->d:I

    iget-object v5, p0, Lh/a;->c:[C

    aget-char v0, v5, v0

    const/16 v6, 0xa

    if-eq v0, v6, :cond_e

    const/16 v4, 0x22

    if-eq v0, v4, :cond_f

    const/16 v4, 0x27

    if-eq v0, v4, :cond_f

    const/16 v4, 0x2f

    if-eq v0, v4, :cond_f

    const/16 v4, 0x5c

    if-eq v0, v4, :cond_f

    const/16 v4, 0x62

    if-eq v0, v4, :cond_d

    const/16 v4, 0x66

    if-eq v0, v4, :cond_c

    const/16 v7, 0x6e

    if-eq v0, v7, :cond_b

    const/16 v7, 0x72

    if-eq v0, v7, :cond_a

    const/16 v7, 0x74

    if-eq v0, v7, :cond_9

    const/16 v7, 0x75

    if-ne v0, v7, :cond_8

    const/4 v0, 0x4

    add-int/2addr v1, v0

    iget v7, p0, Lh/a;->e:I

    if-le v1, v7, :cond_3

    invoke-virtual {p0, v0}, Lh/a;->i(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Lh/a;->G(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    iget v1, p0, Lh/a;->d:I

    add-int/lit8 v2, v1, 0x4

    const/4 v3, 0x0

    :goto_2
    if-ge v1, v2, :cond_7

    aget-char v7, v5, v1

    shl-int/lit8 v3, v3, 0x4

    int-to-char v3, v3

    const/16 v8, 0x30

    if-lt v7, v8, :cond_4

    const/16 v8, 0x39

    if-gt v7, v8, :cond_4

    add-int/lit8 v7, v7, -0x30

    goto :goto_4

    :cond_4
    const/16 v8, 0x61

    if-lt v7, v8, :cond_5

    if-gt v7, v4, :cond_5

    add-int/lit8 v7, v7, -0x61

    goto :goto_3

    :cond_5
    const/16 v8, 0x41

    if-lt v7, v8, :cond_6

    const/16 v8, 0x46

    if-gt v7, v8, :cond_6

    add-int/lit8 v7, v7, -0x41

    :goto_3
    add-int/2addr v7, v6

    :goto_4
    add-int/2addr v7, v3

    int-to-char v3, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/String;

    iget v3, p0, Lh/a;->d:I

    invoke-direct {v2, v5, v3, v0}, Ljava/lang/String;-><init>([CII)V

    const-string v0, "\\u"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget v1, p0, Lh/a;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lh/a;->d:I

    return v3

    :cond_8
    const-string v0, "Invalid escape sequence"

    invoke-virtual {p0, v0}, Lh/a;->G(Ljava/lang/String;)V

    throw v2

    :cond_9
    const/16 v0, 0x9

    return v0

    :cond_a
    const/16 v0, 0xd

    return v0

    :cond_b
    return v6

    :cond_c
    const/16 v0, 0xc

    return v0

    :cond_d
    const/16 v0, 0x8

    return v0

    :cond_e
    iget v2, p0, Lh/a;->f:I

    add-int/2addr v2, v4

    iput v2, p0, Lh/a;->f:I

    iput v1, p0, Lh/a;->g:I

    :cond_f
    return v0
.end method

.method public final C(C)V
    .locals 5

    .line 1
    :goto_0
    iget v0, p0, Lh/a;->d:I

    iget v1, p0, Lh/a;->e:I

    :goto_1
    const/4 v2, 0x1

    if-ge v0, v1, :cond_3

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lh/a;->c:[C

    aget-char v0, v4, v0

    if-ne v0, p1, :cond_0

    iput v3, p0, Lh/a;->d:I

    return-void

    :cond_0
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_1

    iput v3, p0, Lh/a;->d:I

    invoke-virtual {p0}, Lh/a;->B()C

    goto :goto_0

    :cond_1
    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    iget v0, p0, Lh/a;->f:I

    add-int/2addr v0, v2

    iput v0, p0, Lh/a;->f:I

    iput v3, p0, Lh/a;->g:I

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    iput v0, p0, Lh/a;->d:I

    invoke-virtual {p0, v2}, Lh/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lh/a;->G(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final D()V
    .locals 4

    .line 1
    :cond_0
    iget v0, p0, Lh/a;->d:I

    iget v1, p0, Lh/a;->e:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lh/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget v0, p0, Lh/a;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lh/a;->d:I

    iget-object v3, p0, Lh/a;->c:[C

    aget-char v0, v3, v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    iget v0, p0, Lh/a;->f:I

    add-int/2addr v0, v2

    iput v0, p0, Lh/a;->f:I

    iput v1, p0, Lh/a;->g:I

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    :cond_3
    :goto_0
    return-void
.end method

.method public final E()V
    .locals 4

    .line 1
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lh/a;->d:I

    add-int v2, v1, v0

    iget v3, p0, Lh/a;->e:I

    if-ge v2, v3, :cond_3

    iget-object v2, p0, Lh/a;->c:[C

    add-int/2addr v1, v0

    aget-char v1, v2, v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    const/16 v2, 0x23

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Lh/a;->e()V

    :cond_2
    :pswitch_1
    iget v1, p0, Lh/a;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lh/a;->d:I

    return-void

    :cond_3
    add-int/2addr v1, v0

    iput v1, p0, Lh/a;->d:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lh/a;->i(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public F()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    move v1, v0

    :cond_0
    iget v2, p0, Lh/a;->h:I

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lh/a;->f()I

    move-result v2

    :cond_1
    const/16 v3, 0x22

    const/16 v4, 0x27

    const-string v5, "<skipped>"

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    return-void

    :pswitch_2
    iget v2, p0, Lh/a;->d:I

    iget v3, p0, Lh/a;->j:I

    add-int/2addr v2, v3

    iput v2, p0, Lh/a;->d:I

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0}, Lh/a;->E()V

    if-nez v1, :cond_3

    iget-object v2, p0, Lh/a;->n:[Ljava/lang/String;

    iget v3, p0, Lh/a;->m:I

    sub-int/2addr v3, v6

    aput-object v5, v2, v3

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, v3}, Lh/a;->C(C)V

    if-nez v1, :cond_3

    iget-object v2, p0, Lh/a;->n:[Ljava/lang/String;

    iget v3, p0, Lh/a;->m:I

    sub-int/2addr v3, v6

    aput-object v5, v2, v3

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0, v4}, Lh/a;->C(C)V

    if-nez v1, :cond_3

    iget-object v2, p0, Lh/a;->n:[Ljava/lang/String;

    iget v3, p0, Lh/a;->m:I

    sub-int/2addr v3, v6

    aput-object v5, v2, v3

    goto :goto_2

    :pswitch_6
    invoke-virtual {p0}, Lh/a;->E()V

    goto :goto_2

    :pswitch_7
    invoke-virtual {p0, v3}, Lh/a;->C(C)V

    goto :goto_2

    :pswitch_8
    invoke-virtual {p0, v4}, Lh/a;->C(C)V

    goto :goto_2

    :cond_2
    :goto_0
    :pswitch_9
    iget v2, p0, Lh/a;->m:I

    sub-int/2addr v2, v6

    iput v2, p0, Lh/a;->m:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :pswitch_a
    invoke-virtual {p0, v6}, Lh/a;->A(I)V

    goto :goto_1

    :pswitch_b
    if-nez v1, :cond_2

    iget-object v2, p0, Lh/a;->n:[Ljava/lang/String;

    iget v3, p0, Lh/a;->m:I

    sub-int/2addr v3, v6

    const/4 v4, 0x0

    aput-object v4, v2, v3

    goto :goto_0

    :pswitch_c
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lh/a;->A(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    :cond_3
    :goto_2
    iput v0, p0, Lh/a;->h:I

    if-gtz v1, :cond_0

    iget-object v0, p0, Lh/a;->o:[I

    iget v1, p0, Lh/a;->m:I

    sub-int/2addr v1, v6

    aget v2, v0, v1

    add-int/2addr v2, v6

    aput v2, v0, v1

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final G(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lh/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh/a;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lh/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .locals 3

    .line 1
    iget v0, p0, Lh/a;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lh/a;->f()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lh/a;->A(I)V

    iget-object v1, p0, Lh/a;->o:[I

    iget v2, p0, Lh/a;->m:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    iput v0, p0, Lh/a;->h:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh/a;->z()I

    move-result v2

    invoke-static {v2}, Lcom/sgscq/vpn/handler/l;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh/a;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lh/a;->h:I

    iget-object v1, p0, Lh/a;->l:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    iput v0, p0, Lh/a;->m:I

    iget-object v0, p0, Lh/a;->a:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget v0, p0, Lh/a;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lh/a;->f()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lh/a;->A(I)V

    const/4 v0, 0x0

    iput v0, p0, Lh/a;->h:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh/a;->z()I

    move-result v2

    invoke-static {v2}, Lcom/sgscq/vpn/handler/l;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh/a;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lh/a;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-virtual {p0, v0}, Lh/a;->G(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final f()I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lh/a;->l:[I

    .line 4
    .line 5
    iget v2, v0, Lh/a;->m:I

    .line 6
    .line 7
    add-int/lit8 v3, v2, -0x1

    .line 8
    .line 9
    aget v3, v1, v3

    .line 10
    .line 11
    const/4 v9, 0x0

    .line 12
    const/16 v10, 0x27

    .line 13
    .line 14
    const/16 v11, 0x5d

    .line 15
    .line 16
    const/16 v12, 0x3b

    .line 17
    .line 18
    const/16 v13, 0x2c

    .line 19
    .line 20
    const/4 v14, 0x3

    .line 21
    const/4 v15, 0x6

    .line 22
    iget-object v6, v0, Lh/a;->c:[C

    .line 23
    .line 24
    const/4 v5, 0x2

    .line 25
    const/4 v7, 0x4

    .line 26
    const/4 v8, 0x5

    .line 27
    const/4 v4, 0x1

    .line 28
    if-ne v3, v4, :cond_1

    .line 29
    .line 30
    sub-int/2addr v2, v4

    .line 31
    aput v5, v1, v2

    .line 32
    .line 33
    :cond_0
    :goto_0
    const/16 v5, 0xa

    .line 34
    .line 35
    const/4 v9, 0x7

    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_1
    if-ne v3, v5, :cond_4

    .line 39
    .line 40
    invoke-virtual {v0, v4}, Lh/a;->u(Z)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eq v1, v13, :cond_0

    .line 45
    .line 46
    if-eq v1, v12, :cond_3

    .line 47
    .line 48
    if-ne v1, v11, :cond_2

    .line 49
    .line 50
    iput v7, v0, Lh/a;->h:I

    .line 51
    .line 52
    return v7

    .line 53
    :cond_2
    const-string v1, "Unterminated array"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lh/a;->G(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v9

    .line 59
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lh/a;->e()V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    const/16 v5, 0x7d

    .line 64
    .line 65
    if-eq v3, v14, :cond_42

    .line 66
    .line 67
    if-ne v3, v8, :cond_5

    .line 68
    .line 69
    move v6, v4

    .line 70
    const/4 v4, 0x2

    .line 71
    goto/16 :goto_1a

    .line 72
    .line 73
    :cond_5
    if-ne v3, v7, :cond_8

    .line 74
    .line 75
    sub-int/2addr v2, v4

    .line 76
    aput v8, v1, v2

    .line 77
    .line 78
    invoke-virtual {v0, v4}, Lh/a;->u(Z)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    const/16 v2, 0x3a

    .line 83
    .line 84
    if-eq v1, v2, :cond_0

    .line 85
    .line 86
    const/16 v2, 0x3d

    .line 87
    .line 88
    if-ne v1, v2, :cond_7

    .line 89
    .line 90
    invoke-virtual/range {p0 .. p0}, Lh/a;->e()V

    .line 91
    .line 92
    .line 93
    iget v1, v0, Lh/a;->d:I

    .line 94
    .line 95
    iget v2, v0, Lh/a;->e:I

    .line 96
    .line 97
    if-lt v1, v2, :cond_6

    .line 98
    .line 99
    invoke-virtual {v0, v4}, Lh/a;->i(I)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_0

    .line 104
    .line 105
    :cond_6
    iget v1, v0, Lh/a;->d:I

    .line 106
    .line 107
    aget-char v2, v6, v1

    .line 108
    .line 109
    const/16 v5, 0x3e

    .line 110
    .line 111
    if-ne v2, v5, :cond_0

    .line 112
    .line 113
    add-int/2addr v1, v4

    .line 114
    iput v1, v0, Lh/a;->d:I

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_7
    const-string v1, "Expected \':\'"

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lh/a;->G(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v9

    .line 123
    :cond_8
    if-ne v3, v15, :cond_c

    .line 124
    .line 125
    iget-boolean v1, v0, Lh/a;->b:Z

    .line 126
    .line 127
    if-eqz v1, :cond_b

    .line 128
    .line 129
    invoke-virtual {v0, v4}, Lh/a;->u(Z)I

    .line 130
    .line 131
    .line 132
    iget v1, v0, Lh/a;->d:I

    .line 133
    .line 134
    sub-int/2addr v1, v4

    .line 135
    iput v1, v0, Lh/a;->d:I

    .line 136
    .line 137
    add-int/2addr v1, v8

    .line 138
    iget v2, v0, Lh/a;->e:I

    .line 139
    .line 140
    if-le v1, v2, :cond_9

    .line 141
    .line 142
    invoke-virtual {v0, v8}, Lh/a;->i(I)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-nez v1, :cond_9

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_9
    iget v1, v0, Lh/a;->d:I

    .line 150
    .line 151
    aget-char v2, v6, v1

    .line 152
    .line 153
    const/16 v9, 0x29

    .line 154
    .line 155
    if-ne v2, v9, :cond_b

    .line 156
    .line 157
    add-int/lit8 v2, v1, 0x1

    .line 158
    .line 159
    aget-char v2, v6, v2

    .line 160
    .line 161
    if-ne v2, v11, :cond_b

    .line 162
    .line 163
    add-int/lit8 v2, v1, 0x2

    .line 164
    .line 165
    aget-char v2, v6, v2

    .line 166
    .line 167
    if-ne v2, v5, :cond_b

    .line 168
    .line 169
    add-int/lit8 v2, v1, 0x3

    .line 170
    .line 171
    aget-char v2, v6, v2

    .line 172
    .line 173
    if-ne v2, v10, :cond_b

    .line 174
    .line 175
    add-int/lit8 v2, v1, 0x4

    .line 176
    .line 177
    aget-char v2, v6, v2

    .line 178
    .line 179
    const/16 v5, 0xa

    .line 180
    .line 181
    if-eq v2, v5, :cond_a

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_a
    add-int/2addr v1, v8

    .line 185
    iput v1, v0, Lh/a;->d:I

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_b
    :goto_1
    const/16 v5, 0xa

    .line 189
    .line 190
    :goto_2
    iget-object v1, v0, Lh/a;->l:[I

    .line 191
    .line 192
    iget v2, v0, Lh/a;->m:I

    .line 193
    .line 194
    sub-int/2addr v2, v4

    .line 195
    const/4 v9, 0x7

    .line 196
    aput v9, v1, v2

    .line 197
    .line 198
    :goto_3
    const/4 v1, 0x0

    .line 199
    :goto_4
    const/16 v2, 0x8

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_c
    const/16 v5, 0xa

    .line 203
    .line 204
    const/4 v9, 0x7

    .line 205
    const/4 v1, 0x0

    .line 206
    if-ne v3, v9, :cond_e

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Lh/a;->u(Z)I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    const/4 v9, -0x1

    .line 213
    if-ne v2, v9, :cond_d

    .line 214
    .line 215
    const/16 v4, 0x11

    .line 216
    .line 217
    goto/16 :goto_1d

    .line 218
    .line 219
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lh/a;->e()V

    .line 220
    .line 221
    .line 222
    iget v2, v0, Lh/a;->d:I

    .line 223
    .line 224
    sub-int/2addr v2, v4

    .line 225
    iput v2, v0, Lh/a;->d:I

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_e
    const/16 v2, 0x8

    .line 229
    .line 230
    if-eq v3, v2, :cond_41

    .line 231
    .line 232
    :goto_5
    invoke-virtual {v0, v4}, Lh/a;->u(Z)I

    .line 233
    .line 234
    .line 235
    move-result v9

    .line 236
    const/16 v1, 0x22

    .line 237
    .line 238
    if-eq v9, v1, :cond_40

    .line 239
    .line 240
    if-eq v9, v10, :cond_3f

    .line 241
    .line 242
    if-eq v9, v13, :cond_3b

    .line 243
    .line 244
    if-eq v9, v12, :cond_3b

    .line 245
    .line 246
    const/16 v1, 0x5b

    .line 247
    .line 248
    if-eq v9, v1, :cond_3a

    .line 249
    .line 250
    if-eq v9, v11, :cond_39

    .line 251
    .line 252
    const/16 v1, 0x7b

    .line 253
    .line 254
    if-eq v9, v1, :cond_38

    .line 255
    .line 256
    iget v1, v0, Lh/a;->d:I

    .line 257
    .line 258
    sub-int/2addr v1, v4

    .line 259
    iput v1, v0, Lh/a;->d:I

    .line 260
    .line 261
    aget-char v1, v6, v1

    .line 262
    .line 263
    const/16 v2, 0x74

    .line 264
    .line 265
    if-eq v1, v2, :cond_13

    .line 266
    .line 267
    const/16 v2, 0x54

    .line 268
    .line 269
    if-ne v1, v2, :cond_f

    .line 270
    .line 271
    goto :goto_7

    .line 272
    :cond_f
    const/16 v2, 0x66

    .line 273
    .line 274
    if-eq v1, v2, :cond_12

    .line 275
    .line 276
    const/16 v2, 0x46

    .line 277
    .line 278
    if-ne v1, v2, :cond_10

    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_10
    const/16 v2, 0x6e

    .line 282
    .line 283
    if-eq v1, v2, :cond_11

    .line 284
    .line 285
    const/16 v2, 0x4e

    .line 286
    .line 287
    if-ne v1, v2, :cond_18

    .line 288
    .line 289
    :cond_11
    const-string v1, "null"

    .line 290
    .line 291
    const-string v2, "NULL"

    .line 292
    .line 293
    const/4 v9, 0x7

    .line 294
    goto :goto_8

    .line 295
    :cond_12
    :goto_6
    const-string v1, "false"

    .line 296
    .line 297
    const-string v2, "FALSE"

    .line 298
    .line 299
    move v9, v15

    .line 300
    goto :goto_8

    .line 301
    :cond_13
    :goto_7
    const-string v1, "true"

    .line 302
    .line 303
    const-string v2, "TRUE"

    .line 304
    .line 305
    move v9, v8

    .line 306
    :goto_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    move v10, v4

    .line 311
    :goto_9
    if-ge v10, v3, :cond_16

    .line 312
    .line 313
    iget v11, v0, Lh/a;->d:I

    .line 314
    .line 315
    add-int/2addr v11, v10

    .line 316
    iget v12, v0, Lh/a;->e:I

    .line 317
    .line 318
    if-lt v11, v12, :cond_14

    .line 319
    .line 320
    add-int/lit8 v11, v10, 0x1

    .line 321
    .line 322
    invoke-virtual {v0, v11}, Lh/a;->i(I)Z

    .line 323
    .line 324
    .line 325
    move-result v11

    .line 326
    if-nez v11, :cond_14

    .line 327
    .line 328
    goto :goto_a

    .line 329
    :cond_14
    iget v11, v0, Lh/a;->d:I

    .line 330
    .line 331
    add-int/2addr v11, v10

    .line 332
    aget-char v11, v6, v11

    .line 333
    .line 334
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 335
    .line 336
    .line 337
    move-result v12

    .line 338
    if-eq v11, v12, :cond_15

    .line 339
    .line 340
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    .line 341
    .line 342
    .line 343
    move-result v12

    .line 344
    if-eq v11, v12, :cond_15

    .line 345
    .line 346
    goto :goto_a

    .line 347
    :cond_15
    add-int/lit8 v10, v10, 0x1

    .line 348
    .line 349
    goto :goto_9

    .line 350
    :cond_16
    iget v1, v0, Lh/a;->d:I

    .line 351
    .line 352
    add-int/2addr v1, v3

    .line 353
    iget v2, v0, Lh/a;->e:I

    .line 354
    .line 355
    if-lt v1, v2, :cond_17

    .line 356
    .line 357
    add-int/lit8 v1, v3, 0x1

    .line 358
    .line 359
    invoke-virtual {v0, v1}, Lh/a;->i(I)Z

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    if-eqz v1, :cond_19

    .line 364
    .line 365
    :cond_17
    iget v1, v0, Lh/a;->d:I

    .line 366
    .line 367
    add-int/2addr v1, v3

    .line 368
    aget-char v1, v6, v1

    .line 369
    .line 370
    invoke-virtual {v0, v1}, Lh/a;->n(C)Z

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    if-eqz v1, :cond_19

    .line 375
    .line 376
    :cond_18
    :goto_a
    const/4 v9, 0x0

    .line 377
    goto :goto_b

    .line 378
    :cond_19
    iget v1, v0, Lh/a;->d:I

    .line 379
    .line 380
    add-int/2addr v1, v3

    .line 381
    iput v1, v0, Lh/a;->d:I

    .line 382
    .line 383
    iput v9, v0, Lh/a;->h:I

    .line 384
    .line 385
    :goto_b
    if-eqz v9, :cond_1a

    .line 386
    .line 387
    return v9

    .line 388
    :cond_1a
    iget v1, v0, Lh/a;->d:I

    .line 389
    .line 390
    iget v2, v0, Lh/a;->e:I

    .line 391
    .line 392
    const-wide/16 v9, 0x0

    .line 393
    .line 394
    move v13, v4

    .line 395
    move-wide v7, v9

    .line 396
    const/4 v3, 0x0

    .line 397
    const/4 v11, 0x0

    .line 398
    const/4 v12, 0x0

    .line 399
    :goto_c
    add-int v5, v1, v11

    .line 400
    .line 401
    if-ne v5, v2, :cond_1d

    .line 402
    .line 403
    array-length v1, v6

    .line 404
    if-ne v11, v1, :cond_1b

    .line 405
    .line 406
    goto/16 :goto_17

    .line 407
    .line 408
    :cond_1b
    add-int/lit8 v1, v11, 0x1

    .line 409
    .line 410
    invoke-virtual {v0, v1}, Lh/a;->i(I)Z

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    if-nez v1, :cond_1c

    .line 415
    .line 416
    goto/16 :goto_12

    .line 417
    .line 418
    :cond_1c
    iget v1, v0, Lh/a;->d:I

    .line 419
    .line 420
    iget v2, v0, Lh/a;->e:I

    .line 421
    .line 422
    :cond_1d
    add-int v5, v1, v11

    .line 423
    .line 424
    aget-char v5, v6, v5

    .line 425
    .line 426
    const/16 v15, 0x2b

    .line 427
    .line 428
    if-eq v5, v15, :cond_33

    .line 429
    .line 430
    const/16 v15, 0x45

    .line 431
    .line 432
    if-eq v5, v15, :cond_31

    .line 433
    .line 434
    const/16 v15, 0x65

    .line 435
    .line 436
    if-eq v5, v15, :cond_31

    .line 437
    .line 438
    const/16 v15, 0x2d

    .line 439
    .line 440
    if-eq v5, v15, :cond_2f

    .line 441
    .line 442
    const/16 v15, 0x2e

    .line 443
    .line 444
    if-eq v5, v15, :cond_2e

    .line 445
    .line 446
    const/16 v15, 0x30

    .line 447
    .line 448
    if-lt v5, v15, :cond_27

    .line 449
    .line 450
    const/16 v15, 0x39

    .line 451
    .line 452
    if-le v5, v15, :cond_1e

    .line 453
    .line 454
    goto :goto_11

    .line 455
    :cond_1e
    if-eq v3, v4, :cond_26

    .line 456
    .line 457
    if-nez v3, :cond_1f

    .line 458
    .line 459
    goto :goto_10

    .line 460
    :cond_1f
    const/4 v15, 0x2

    .line 461
    if-ne v3, v15, :cond_23

    .line 462
    .line 463
    cmp-long v15, v7, v9

    .line 464
    .line 465
    if-nez v15, :cond_20

    .line 466
    .line 467
    goto/16 :goto_17

    .line 468
    .line 469
    :cond_20
    const-wide/16 v16, 0xa

    .line 470
    .line 471
    mul-long v16, v16, v7

    .line 472
    .line 473
    add-int/lit8 v5, v5, -0x30

    .line 474
    .line 475
    int-to-long v4, v5

    .line 476
    sub-long v16, v16, v4

    .line 477
    .line 478
    const-wide v4, -0xcccccccccccccccL

    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    cmp-long v4, v7, v4

    .line 484
    .line 485
    if-gtz v4, :cond_22

    .line 486
    .line 487
    if-nez v4, :cond_21

    .line 488
    .line 489
    cmp-long v4, v16, v7

    .line 490
    .line 491
    if-gez v4, :cond_21

    .line 492
    .line 493
    goto :goto_d

    .line 494
    :cond_21
    const/4 v4, 0x0

    .line 495
    goto :goto_e

    .line 496
    :cond_22
    :goto_d
    const/4 v4, 0x1

    .line 497
    :goto_e
    and-int/2addr v13, v4

    .line 498
    move-wide/from16 v7, v16

    .line 499
    .line 500
    goto/16 :goto_16

    .line 501
    .line 502
    :cond_23
    if-ne v3, v14, :cond_24

    .line 503
    .line 504
    const/4 v3, 0x4

    .line 505
    goto/16 :goto_16

    .line 506
    .line 507
    :cond_24
    const/4 v4, 0x5

    .line 508
    if-eq v3, v4, :cond_25

    .line 509
    .line 510
    const/4 v4, 0x6

    .line 511
    if-ne v3, v4, :cond_34

    .line 512
    .line 513
    goto :goto_f

    .line 514
    :cond_25
    const/4 v4, 0x6

    .line 515
    :goto_f
    const/4 v3, 0x7

    .line 516
    goto/16 :goto_16

    .line 517
    .line 518
    :cond_26
    :goto_10
    const/4 v4, 0x6

    .line 519
    add-int/lit8 v5, v5, -0x30

    .line 520
    .line 521
    neg-int v3, v5

    .line 522
    int-to-long v7, v3

    .line 523
    const/4 v3, 0x2

    .line 524
    goto :goto_16

    .line 525
    :cond_27
    :goto_11
    invoke-virtual {v0, v5}, Lh/a;->n(C)Z

    .line 526
    .line 527
    .line 528
    move-result v1

    .line 529
    if-nez v1, :cond_35

    .line 530
    .line 531
    :goto_12
    const/4 v1, 0x2

    .line 532
    if-ne v3, v1, :cond_2c

    .line 533
    .line 534
    if-eqz v13, :cond_2b

    .line 535
    .line 536
    const-wide/high16 v1, -0x8000000000000000L

    .line 537
    .line 538
    cmp-long v1, v7, v1

    .line 539
    .line 540
    if-nez v1, :cond_28

    .line 541
    .line 542
    if-eqz v12, :cond_2b

    .line 543
    .line 544
    :cond_28
    cmp-long v1, v7, v9

    .line 545
    .line 546
    if-nez v1, :cond_29

    .line 547
    .line 548
    if-nez v12, :cond_2b

    .line 549
    .line 550
    :cond_29
    if-eqz v12, :cond_2a

    .line 551
    .line 552
    goto :goto_13

    .line 553
    :cond_2a
    neg-long v7, v7

    .line 554
    :goto_13
    iput-wide v7, v0, Lh/a;->i:J

    .line 555
    .line 556
    iget v1, v0, Lh/a;->d:I

    .line 557
    .line 558
    add-int/2addr v1, v11

    .line 559
    iput v1, v0, Lh/a;->d:I

    .line 560
    .line 561
    const/16 v1, 0xf

    .line 562
    .line 563
    goto :goto_14

    .line 564
    :cond_2b
    const/4 v1, 0x2

    .line 565
    :cond_2c
    if-eq v3, v1, :cond_2d

    .line 566
    .line 567
    const/4 v1, 0x4

    .line 568
    if-eq v3, v1, :cond_2d

    .line 569
    .line 570
    const/4 v5, 0x7

    .line 571
    if-ne v3, v5, :cond_35

    .line 572
    .line 573
    :cond_2d
    iput v11, v0, Lh/a;->j:I

    .line 574
    .line 575
    const/16 v1, 0x10

    .line 576
    .line 577
    :goto_14
    move v7, v1

    .line 578
    iput v7, v0, Lh/a;->h:I

    .line 579
    .line 580
    goto :goto_18

    .line 581
    :cond_2e
    const/4 v4, 0x2

    .line 582
    const/4 v5, 0x7

    .line 583
    if-ne v3, v4, :cond_35

    .line 584
    .line 585
    move v3, v14

    .line 586
    goto :goto_16

    .line 587
    :cond_2f
    const/4 v4, 0x2

    .line 588
    const/4 v5, 0x7

    .line 589
    if-nez v3, :cond_30

    .line 590
    .line 591
    const/4 v3, 0x1

    .line 592
    const/4 v12, 0x1

    .line 593
    goto :goto_16

    .line 594
    :cond_30
    const/4 v5, 0x5

    .line 595
    if-ne v3, v5, :cond_35

    .line 596
    .line 597
    goto :goto_15

    .line 598
    :cond_31
    const/4 v4, 0x2

    .line 599
    const/4 v5, 0x5

    .line 600
    if-eq v3, v4, :cond_32

    .line 601
    .line 602
    const/4 v4, 0x4

    .line 603
    if-ne v3, v4, :cond_35

    .line 604
    .line 605
    :cond_32
    move v3, v5

    .line 606
    goto :goto_16

    .line 607
    :cond_33
    const/4 v5, 0x5

    .line 608
    if-ne v3, v5, :cond_35

    .line 609
    .line 610
    :goto_15
    const/4 v3, 0x6

    .line 611
    :cond_34
    :goto_16
    add-int/lit8 v11, v11, 0x1

    .line 612
    .line 613
    const/4 v4, 0x1

    .line 614
    const/4 v15, 0x6

    .line 615
    goto/16 :goto_c

    .line 616
    .line 617
    :cond_35
    :goto_17
    const/4 v7, 0x0

    .line 618
    :goto_18
    if-eqz v7, :cond_36

    .line 619
    .line 620
    return v7

    .line 621
    :cond_36
    iget v1, v0, Lh/a;->d:I

    .line 622
    .line 623
    aget-char v1, v6, v1

    .line 624
    .line 625
    invoke-virtual {v0, v1}, Lh/a;->n(C)Z

    .line 626
    .line 627
    .line 628
    move-result v1

    .line 629
    if-eqz v1, :cond_37

    .line 630
    .line 631
    invoke-virtual/range {p0 .. p0}, Lh/a;->e()V

    .line 632
    .line 633
    .line 634
    const/16 v4, 0xa

    .line 635
    .line 636
    goto/16 :goto_1d

    .line 637
    .line 638
    :cond_37
    const-string v1, "Expected value"

    .line 639
    .line 640
    invoke-virtual {v0, v1}, Lh/a;->G(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    const/4 v1, 0x0

    .line 644
    throw v1

    .line 645
    :cond_38
    const/4 v4, 0x1

    .line 646
    goto/16 :goto_1d

    .line 647
    .line 648
    :cond_39
    move v1, v4

    .line 649
    if-ne v3, v1, :cond_3c

    .line 650
    .line 651
    const/4 v5, 0x4

    .line 652
    goto/16 :goto_1c

    .line 653
    .line 654
    :cond_3a
    iput v14, v0, Lh/a;->h:I

    .line 655
    .line 656
    return v14

    .line 657
    :cond_3b
    move v1, v4

    .line 658
    :cond_3c
    if-eq v3, v1, :cond_3e

    .line 659
    .line 660
    const/4 v4, 0x2

    .line 661
    if-ne v3, v4, :cond_3d

    .line 662
    .line 663
    goto :goto_19

    .line 664
    :cond_3d
    const-string v1, "Unexpected value"

    .line 665
    .line 666
    invoke-virtual {v0, v1}, Lh/a;->G(Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    const/4 v1, 0x0

    .line 670
    throw v1

    .line 671
    :cond_3e
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lh/a;->e()V

    .line 672
    .line 673
    .line 674
    iget v2, v0, Lh/a;->d:I

    .line 675
    .line 676
    sub-int/2addr v2, v1

    .line 677
    iput v2, v0, Lh/a;->d:I

    .line 678
    .line 679
    const/4 v4, 0x7

    .line 680
    goto/16 :goto_1d

    .line 681
    .line 682
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lh/a;->e()V

    .line 683
    .line 684
    .line 685
    move v4, v2

    .line 686
    goto :goto_1d

    .line 687
    :cond_40
    const/16 v4, 0x9

    .line 688
    .line 689
    goto :goto_1d

    .line 690
    :cond_41
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 691
    .line 692
    const-string v2, "JsonReader is closed"

    .line 693
    .line 694
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    throw v1

    .line 698
    :cond_42
    const/4 v4, 0x2

    .line 699
    const/4 v6, 0x1

    .line 700
    :goto_1a
    sub-int/2addr v2, v6

    .line 701
    const/4 v7, 0x4

    .line 702
    aput v7, v1, v2

    .line 703
    .line 704
    const/4 v1, 0x5

    .line 705
    if-ne v3, v1, :cond_46

    .line 706
    .line 707
    invoke-virtual {v0, v6}, Lh/a;->u(Z)I

    .line 708
    .line 709
    .line 710
    move-result v1

    .line 711
    if-eq v1, v13, :cond_45

    .line 712
    .line 713
    if-eq v1, v12, :cond_44

    .line 714
    .line 715
    if-ne v1, v5, :cond_43

    .line 716
    .line 717
    goto :goto_1d

    .line 718
    :cond_43
    const-string v1, "Unterminated object"

    .line 719
    .line 720
    invoke-virtual {v0, v1}, Lh/a;->G(Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    const/4 v1, 0x0

    .line 724
    throw v1

    .line 725
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lh/a;->e()V

    .line 726
    .line 727
    .line 728
    :cond_45
    const/4 v1, 0x1

    .line 729
    goto :goto_1b

    .line 730
    :cond_46
    move v1, v6

    .line 731
    :goto_1b
    invoke-virtual {v0, v1}, Lh/a;->u(Z)I

    .line 732
    .line 733
    .line 734
    move-result v2

    .line 735
    const/16 v6, 0x22

    .line 736
    .line 737
    if-eq v2, v6, :cond_4b

    .line 738
    .line 739
    if-eq v2, v10, :cond_4a

    .line 740
    .line 741
    const-string v6, "Expected name"

    .line 742
    .line 743
    if-eq v2, v5, :cond_48

    .line 744
    .line 745
    invoke-virtual/range {p0 .. p0}, Lh/a;->e()V

    .line 746
    .line 747
    .line 748
    iget v3, v0, Lh/a;->d:I

    .line 749
    .line 750
    sub-int/2addr v3, v1

    .line 751
    iput v3, v0, Lh/a;->d:I

    .line 752
    .line 753
    int-to-char v1, v2

    .line 754
    invoke-virtual {v0, v1}, Lh/a;->n(C)Z

    .line 755
    .line 756
    .line 757
    move-result v1

    .line 758
    if-eqz v1, :cond_47

    .line 759
    .line 760
    const/16 v4, 0xe

    .line 761
    .line 762
    goto :goto_1d

    .line 763
    :cond_47
    invoke-virtual {v0, v6}, Lh/a;->G(Ljava/lang/String;)V

    .line 764
    .line 765
    .line 766
    const/4 v1, 0x0

    .line 767
    throw v1

    .line 768
    :cond_48
    const/4 v1, 0x0

    .line 769
    const/4 v2, 0x5

    .line 770
    if-eq v3, v2, :cond_49

    .line 771
    .line 772
    move v5, v4

    .line 773
    :goto_1c
    iput v5, v0, Lh/a;->h:I

    .line 774
    .line 775
    return v5

    .line 776
    :cond_49
    invoke-virtual {v0, v6}, Lh/a;->G(Ljava/lang/String;)V

    .line 777
    .line 778
    .line 779
    throw v1

    .line 780
    :cond_4a
    invoke-virtual/range {p0 .. p0}, Lh/a;->e()V

    .line 781
    .line 782
    .line 783
    const/16 v4, 0xc

    .line 784
    .line 785
    goto :goto_1d

    .line 786
    :cond_4b
    const/16 v4, 0xd

    .line 787
    .line 788
    :goto_1d
    iput v4, v0, Lh/a;->h:I

    .line 789
    .line 790
    return v4
.end method

.method public g()V
    .locals 3

    .line 1
    iget v0, p0, Lh/a;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lh/a;->f()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Lh/a;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lh/a;->m:I

    iget-object v1, p0, Lh/a;->o:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lh/a;->h:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh/a;->z()I

    move-result v2

    invoke-static {v2}, Lcom/sgscq/vpn/handler/l;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh/a;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()V
    .locals 3

    .line 1
    iget v0, p0, Lh/a;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lh/a;->f()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lh/a;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lh/a;->m:I

    iget-object v1, p0, Lh/a;->n:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget-object v1, p0, Lh/a;->o:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lh/a;->h:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh/a;->z()I

    move-result v2

    invoke-static {v2}, Lcom/sgscq/vpn/handler/l;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh/a;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i(I)Z
    .locals 7

    .line 1
    iget v0, p0, Lh/a;->g:I

    iget v1, p0, Lh/a;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lh/a;->g:I

    iget v0, p0, Lh/a;->e:I

    const/4 v2, 0x0

    iget-object v3, p0, Lh/a;->c:[C

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    iput v0, p0, Lh/a;->e:I

    invoke-static {v3, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iput v2, p0, Lh/a;->e:I

    :goto_0
    iput v2, p0, Lh/a;->d:I

    :cond_1
    iget v0, p0, Lh/a;->e:I

    array-length v1, v3

    sub-int/2addr v1, v0

    iget-object v4, p0, Lh/a;->a:Ljava/io/Reader;

    invoke-virtual {v4, v3, v0, v1}, Ljava/io/Reader;->read([CII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v1, p0, Lh/a;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lh/a;->e:I

    iget v0, p0, Lh/a;->f:I

    const/4 v4, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lh/a;->g:I

    if-nez v0, :cond_2

    if-lez v1, :cond_2

    aget-char v5, v3, v2

    const v6, 0xfeff

    if-ne v5, v6, :cond_2

    iget v5, p0, Lh/a;->d:I

    add-int/2addr v5, v4

    iput v5, p0, Lh/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lh/a;->g:I

    add-int/lit8 p1, p1, 0x1

    :cond_2
    if-lt v1, p1, :cond_1

    return v4

    :cond_3
    return v2
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lh/a;->k(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k(Z)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lh/a;->m:I

    if-ge v1, v2, :cond_4

    iget-object v3, p0, Lh/a;->l:[I

    aget v3, v3, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v2, 0x3

    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-eq v3, v2, :cond_0

    const/4 v2, 0x5

    if-eq v3, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lh/a;->n:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lh/a;->o:[I

    aget v3, v3, v1

    if-eqz p1, :cond_2

    if-lez v3, :cond_2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    add-int/lit8 v3, v3, -0x1

    :cond_2
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lh/a;->k(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .locals 2

    .line 1
    iget v0, p0, Lh/a;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lh/a;->f()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final n(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    return p1

    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lh/a;->e()V

    :cond_1
    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final o()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lh/a;->f:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lh/a;->d:I

    iget v2, p0, Lh/a;->g:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " column "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " path "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Z
    .locals 5

    .line 1
    iget v0, p0, Lh/a;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lh/a;->f()I

    move-result v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iput v2, p0, Lh/a;->h:I

    iget-object v0, p0, Lh/a;->o:[I

    iget v1, p0, Lh/a;->m:I

    sub-int/2addr v1, v3

    aget v2, v0, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    return v3

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iput v2, p0, Lh/a;->h:I

    iget-object v0, p0, Lh/a;->o:[I

    iget v1, p0, Lh/a;->m:I

    sub-int/2addr v1, v3

    aget v4, v0, v1

    add-int/2addr v4, v3

    aput v4, v0, v1

    return v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a boolean but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh/a;->z()I

    move-result v2

    invoke-static {v2}, Lcom/sgscq/vpn/handler/l;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh/a;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public q()D
    .locals 6

    .line 1
    iget v0, p0, Lh/a;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lh/a;->f()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Lh/a;->h:I

    iget-object v0, p0, Lh/a;->o:[I

    iget v1, p0, Lh/a;->m:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lh/a;->i:J

    long-to-double v0, v0

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const/16 v3, 0xb

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Lh/a;->d:I

    iget v4, p0, Lh/a;->j:I

    iget-object v5, p0, Lh/a;->c:[C

    invoke-direct {v0, v5, v1, v4}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lh/a;->k:Ljava/lang/String;

    iget v0, p0, Lh/a;->d:I

    iget v1, p0, Lh/a;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lh/a;->d:I

    goto :goto_3

    :cond_2
    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v4, 0x9

    if-ne v0, v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lh/a;->y()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    if-ne v0, v3, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a double but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh/a;->z()I

    move-result v2

    invoke-static {v2}, Lcom/sgscq/vpn/handler/l;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh/a;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    const/16 v0, 0x27

    goto :goto_1

    :cond_7
    const/16 v0, 0x22

    :goto_1
    invoke-virtual {p0, v0}, Lh/a;->w(C)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lh/a;->k:Ljava/lang/String;

    :goto_3
    iput v3, p0, Lh/a;->h:I

    iget-object v0, p0, Lh/a;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-boolean v3, p0, Lh/a;->b:Z

    if-nez v3, :cond_9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    new-instance v2, Lh/c;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh/a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lh/c;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_4
    const/4 v3, 0x0

    iput-object v3, p0, Lh/a;->k:Ljava/lang/String;

    iput v2, p0, Lh/a;->h:I

    iget-object v2, p0, Lh/a;->o:[I

    iget v3, p0, Lh/a;->m:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    return-wide v0
.end method

.method public r()I
    .locals 7

    .line 1
    iget v0, p0, Lh/a;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lh/a;->f()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const-string v2, "Expected an int but was "

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lh/a;->i:J

    long-to-int v4, v0

    int-to-long v5, v4

    cmp-long v0, v0, v5

    if-nez v0, :cond_1

    iput v3, p0, Lh/a;->h:I

    iget-object v0, p0, Lh/a;->o:[I

    iget v1, p0, Lh/a;->m:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v4

    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lh/a;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh/a;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Lh/a;->d:I

    iget v4, p0, Lh/a;->j:I

    iget-object v5, p0, Lh/a;->c:[C

    invoke-direct {v0, v5, v1, v4}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lh/a;->k:Ljava/lang/String;

    iget v0, p0, Lh/a;->d:I

    iget v1, p0, Lh/a;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lh/a;->d:I

    goto :goto_4

    :cond_3
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_5

    const/16 v5, 0x9

    if-eq v0, v5, :cond_5

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh/a;->z()I

    move-result v2

    invoke-static {v2}, Lcom/sgscq/vpn/handler/l;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh/a;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lh/a;->y()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lh/a;->k:Ljava/lang/String;

    goto :goto_3

    :cond_6
    if-ne v0, v4, :cond_7

    const/16 v0, 0x27

    goto :goto_2

    :cond_7
    const/16 v0, 0x22

    :goto_2
    invoke-virtual {p0, v0}, Lh/a;->w(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_3
    :try_start_0
    iget-object v0, p0, Lh/a;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v3, p0, Lh/a;->h:I

    iget-object v1, p0, Lh/a;->o:[I

    iget v4, p0, Lh/a;->m:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :goto_4
    const/16 v0, 0xb

    iput v0, p0, Lh/a;->h:I

    iget-object v0, p0, Lh/a;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v4, v0

    int-to-double v5, v4

    cmpl-double v0, v5, v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Lh/a;->k:Ljava/lang/String;

    iput v3, p0, Lh/a;->h:I

    iget-object v0, p0, Lh/a;->o:[I

    iget v1, p0, Lh/a;->m:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v4

    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lh/a;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh/a;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public s()J
    .locals 8

    .line 1
    iget v0, p0, Lh/a;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lh/a;->f()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Lh/a;->h:I

    iget-object v0, p0, Lh/a;->o:[I

    iget v1, p0, Lh/a;->m:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lh/a;->i:J

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const-string v3, "Expected a long but was "

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Lh/a;->d:I

    iget v4, p0, Lh/a;->j:I

    iget-object v5, p0, Lh/a;->c:[C

    invoke-direct {v0, v5, v1, v4}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lh/a;->k:Ljava/lang/String;

    iget v0, p0, Lh/a;->d:I

    iget v1, p0, Lh/a;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lh/a;->d:I

    goto :goto_4

    :cond_2
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_4

    const/16 v5, 0x9

    if-eq v0, v5, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh/a;->z()I

    move-result v2

    invoke-static {v2}, Lcom/sgscq/vpn/handler/l;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh/a;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lh/a;->y()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lh/a;->k:Ljava/lang/String;

    goto :goto_3

    :cond_5
    if-ne v0, v4, :cond_6

    const/16 v0, 0x27

    goto :goto_2

    :cond_6
    const/16 v0, 0x22

    :goto_2
    invoke-virtual {p0, v0}, Lh/a;->w(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_3
    :try_start_0
    iget-object v0, p0, Lh/a;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput v2, p0, Lh/a;->h:I

    iget-object v4, p0, Lh/a;->o:[I

    iget v5, p0, Lh/a;->m:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :goto_4
    const/16 v0, 0xb

    iput v0, p0, Lh/a;->h:I

    iget-object v0, p0, Lh/a;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v4, v0

    long-to-double v6, v4

    cmpl-double v0, v6, v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lh/a;->k:Ljava/lang/String;

    iput v2, p0, Lh/a;->h:I

    iget-object v0, p0, Lh/a;->o:[I

    iget v1, p0, Lh/a;->m:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-wide v4

    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lh/a;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh/a;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lh/a;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lh/a;->f()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lh/a;->y()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    :goto_0
    invoke-virtual {p0, v0}, Lh/a;->w(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    goto :goto_0

    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lh/a;->h:I

    iget-object v1, p0, Lh/a;->n:[Ljava/lang/String;

    iget v2, p0, Lh/a;->m:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh/a;->z()I

    move-result v2

    invoke-static {v2}, Lcom/sgscq/vpn/handler/l;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh/a;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Z)I
    .locals 9

    .line 1
    :goto_0
    iget v0, p0, Lh/a;->d:I

    .line 2
    .line 3
    :goto_1
    iget v1, p0, Lh/a;->e:I

    .line 4
    .line 5
    :goto_2
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_2

    .line 7
    .line 8
    iput v0, p0, Lh/a;->d:I

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Lh/a;->i(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const/4 p1, -0x1

    .line 19
    return p1

    .line 20
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "End of input"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lh/a;->o()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_1
    iget v0, p0, Lh/a;->d:I

    .line 45
    .line 46
    iget v1, p0, Lh/a;->e:I

    .line 47
    .line 48
    :cond_2
    add-int/lit8 v3, v0, 0x1

    .line 49
    .line 50
    iget-object v4, p0, Lh/a;->c:[C

    .line 51
    .line 52
    aget-char v0, v4, v0

    .line 53
    .line 54
    const/16 v5, 0xa

    .line 55
    .line 56
    if-ne v0, v5, :cond_3

    .line 57
    .line 58
    iget v0, p0, Lh/a;->f:I

    .line 59
    .line 60
    add-int/2addr v0, v2

    .line 61
    iput v0, p0, Lh/a;->f:I

    .line 62
    .line 63
    iput v3, p0, Lh/a;->g:I

    .line 64
    .line 65
    goto/16 :goto_9

    .line 66
    .line 67
    :cond_3
    const/16 v6, 0x20

    .line 68
    .line 69
    if-eq v0, v6, :cond_10

    .line 70
    .line 71
    const/16 v6, 0xd

    .line 72
    .line 73
    if-eq v0, v6, :cond_10

    .line 74
    .line 75
    const/16 v6, 0x9

    .line 76
    .line 77
    if-ne v0, v6, :cond_4

    .line 78
    .line 79
    goto/16 :goto_9

    .line 80
    .line 81
    :cond_4
    const/16 v6, 0x2f

    .line 82
    .line 83
    iput v3, p0, Lh/a;->d:I

    .line 84
    .line 85
    if-ne v0, v6, :cond_e

    .line 86
    .line 87
    const/4 v7, 0x2

    .line 88
    if-ne v3, v1, :cond_5

    .line 89
    .line 90
    add-int/lit8 v3, v3, -0x1

    .line 91
    .line 92
    iput v3, p0, Lh/a;->d:I

    .line 93
    .line 94
    invoke-virtual {p0, v7}, Lh/a;->i(I)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    iget v3, p0, Lh/a;->d:I

    .line 99
    .line 100
    add-int/2addr v3, v2

    .line 101
    iput v3, p0, Lh/a;->d:I

    .line 102
    .line 103
    if-nez v1, :cond_5

    .line 104
    .line 105
    return v0

    .line 106
    :cond_5
    invoke-virtual {p0}, Lh/a;->e()V

    .line 107
    .line 108
    .line 109
    iget v1, p0, Lh/a;->d:I

    .line 110
    .line 111
    aget-char v3, v4, v1

    .line 112
    .line 113
    const/16 v8, 0x2a

    .line 114
    .line 115
    if-eq v3, v8, :cond_7

    .line 116
    .line 117
    if-eq v3, v6, :cond_6

    .line 118
    .line 119
    return v0

    .line 120
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 121
    .line 122
    iput v1, p0, Lh/a;->d:I

    .line 123
    .line 124
    goto :goto_8

    .line 125
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 126
    .line 127
    iput v1, p0, Lh/a;->d:I

    .line 128
    .line 129
    :goto_3
    iget v0, p0, Lh/a;->d:I

    .line 130
    .line 131
    add-int/2addr v0, v7

    .line 132
    iget v1, p0, Lh/a;->e:I

    .line 133
    .line 134
    const/4 v3, 0x0

    .line 135
    if-le v0, v1, :cond_9

    .line 136
    .line 137
    invoke-virtual {p0, v7}, Lh/a;->i(I)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_8

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_8
    move v2, v3

    .line 145
    goto :goto_7

    .line 146
    :cond_9
    :goto_4
    iget v0, p0, Lh/a;->d:I

    .line 147
    .line 148
    aget-char v1, v4, v0

    .line 149
    .line 150
    if-ne v1, v5, :cond_a

    .line 151
    .line 152
    iget v1, p0, Lh/a;->f:I

    .line 153
    .line 154
    add-int/2addr v1, v2

    .line 155
    iput v1, p0, Lh/a;->f:I

    .line 156
    .line 157
    add-int/lit8 v0, v0, 0x1

    .line 158
    .line 159
    iput v0, p0, Lh/a;->g:I

    .line 160
    .line 161
    goto :goto_6

    .line 162
    :cond_a
    :goto_5
    if-ge v3, v7, :cond_c

    .line 163
    .line 164
    iget v0, p0, Lh/a;->d:I

    .line 165
    .line 166
    add-int/2addr v0, v3

    .line 167
    aget-char v0, v4, v0

    .line 168
    .line 169
    const-string v1, "*/"

    .line 170
    .line 171
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eq v0, v1, :cond_b

    .line 176
    .line 177
    :goto_6
    iget v0, p0, Lh/a;->d:I

    .line 178
    .line 179
    add-int/2addr v0, v2

    .line 180
    iput v0, p0, Lh/a;->d:I

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_c
    :goto_7
    if-eqz v2, :cond_d

    .line 187
    .line 188
    iget v0, p0, Lh/a;->d:I

    .line 189
    .line 190
    add-int/2addr v0, v7

    .line 191
    goto/16 :goto_1

    .line 192
    .line 193
    :cond_d
    const-string p1, "Unterminated comment"

    .line 194
    .line 195
    invoke-virtual {p0, p1}, Lh/a;->G(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    const/4 p1, 0x0

    .line 199
    throw p1

    .line 200
    :cond_e
    const/16 v1, 0x23

    .line 201
    .line 202
    if-ne v0, v1, :cond_f

    .line 203
    .line 204
    invoke-virtual {p0}, Lh/a;->e()V

    .line 205
    .line 206
    .line 207
    :goto_8
    invoke-virtual {p0}, Lh/a;->D()V

    .line 208
    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :cond_f
    return v0

    .line 213
    :cond_10
    :goto_9
    move v0, v3

    .line 214
    goto/16 :goto_2
.end method

.method public v()V
    .locals 3

    .line 1
    iget v0, p0, Lh/a;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lh/a;->f()I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lh/a;->h:I

    iget-object v0, p0, Lh/a;->o:[I

    iget v1, p0, Lh/a;->m:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected null but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh/a;->z()I

    move-result v2

    invoke-static {v2}, Lcom/sgscq/vpn/handler/l;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh/a;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final w(C)Ljava/lang/String;
    .locals 10

    .line 1
    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    iget v2, p0, Lh/a;->d:I

    iget v3, p0, Lh/a;->e:I

    move v4, v2

    :goto_1
    const/4 v5, 0x1

    const/16 v6, 0x10

    iget-object v7, p0, Lh/a;->c:[C

    if-ge v4, v3, :cond_5

    add-int/lit8 v8, v4, 0x1

    aget-char v4, v7, v4

    if-ne v4, p1, :cond_1

    iput v8, p0, Lh/a;->d:I

    sub-int/2addr v8, v2

    sub-int/2addr v8, v5

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v7, v2, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_0
    invoke-virtual {v1, v7, v2, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v9, 0x5c

    if-ne v4, v9, :cond_3

    iput v8, p0, Lh/a;->d:I

    sub-int/2addr v8, v2

    sub-int/2addr v8, v5

    if-nez v1, :cond_2

    add-int/lit8 v1, v8, 0x1

    mul-int/lit8 v1, v1, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v3

    :cond_2
    invoke-virtual {v1, v7, v2, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh/a;->B()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 v6, 0xa

    if-ne v4, v6, :cond_4

    iget v4, p0, Lh/a;->f:I

    add-int/2addr v4, v5

    iput v4, p0, Lh/a;->f:I

    iput v8, p0, Lh/a;->g:I

    :cond_4
    move v4, v8

    goto :goto_1

    :cond_5
    if-nez v1, :cond_6

    sub-int v1, v4, v2

    mul-int/lit8 v1, v1, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v3

    :cond_6
    sub-int v3, v4, v2

    invoke-virtual {v1, v7, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iput v4, p0, Lh/a;->d:I

    invoke-virtual {p0, v5}, Lh/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lh/a;->G(Ljava/lang/String;)V

    throw v0
.end method

.method public x()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lh/a;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lh/a;->f()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lh/a;->y()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    :goto_0
    invoke-virtual {p0, v0}, Lh/a;->w(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lh/a;->k:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lh/a;->k:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lh/a;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Lh/a;->d:I

    iget v2, p0, Lh/a;->j:I

    iget-object v3, p0, Lh/a;->c:[C

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    iget v1, p0, Lh/a;->d:I

    iget v2, p0, Lh/a;->j:I

    add-int/2addr v1, v2

    iput v1, p0, Lh/a;->d:I

    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lh/a;->h:I

    iget-object v1, p0, Lh/a;->o:[I

    iget v2, p0, Lh/a;->m:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh/a;->z()I

    move-result v2

    invoke-static {v2}, Lcom/sgscq/vpn/handler/l;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh/a;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final y()Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    move v2, v1

    :goto_0
    iget v3, p0, Lh/a;->d:I

    add-int v4, v3, v2

    iget v5, p0, Lh/a;->e:I

    iget-object v6, p0, Lh/a;->c:[C

    if-ge v4, v5, :cond_2

    add-int/2addr v3, v2

    aget-char v3, v6, v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_1

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Lh/a;->e()V

    goto :goto_1

    :cond_2
    array-length v3, v6

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Lh/a;->i(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    :pswitch_1
    move v1, v2

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_5
    iget v3, p0, Lh/a;->d:I

    invoke-virtual {v0, v6, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Lh/a;->d:I

    add-int/2addr v3, v2

    iput v3, p0, Lh/a;->d:I

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lh/a;->i(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_2
    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/String;

    iget v2, p0, Lh/a;->d:I

    invoke-direct {v0, v6, v2, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    :cond_6
    iget v2, p0, Lh/a;->d:I

    invoke-virtual {v0, v6, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget v2, p0, Lh/a;->d:I

    add-int/2addr v2, v1

    iput v2, p0, Lh/a;->d:I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public z()I
    .locals 1

    .line 1
    iget v0, p0, Lh/a;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lh/a;->f()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    const/16 v0, 0xa

    return v0

    :pswitch_1
    const/4 v0, 0x7

    return v0

    :pswitch_2
    const/4 v0, 0x5

    return v0

    :pswitch_3
    const/4 v0, 0x6

    return v0

    :pswitch_4
    const/16 v0, 0x9

    return v0

    :pswitch_5
    const/16 v0, 0x8

    return v0

    :pswitch_6
    const/4 v0, 0x2

    return v0

    :pswitch_7
    const/4 v0, 0x1

    return v0

    :pswitch_8
    const/4 v0, 0x4

    return v0

    :pswitch_9
    const/4 v0, 0x3

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
