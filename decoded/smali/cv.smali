.class public final Lcv;
.super Lct;


# static fields
.field private static d:[C


# instance fields
.field private e:Lr;

.field private f:Ljava/io/Writer;

.field private g:[C

.field private h:I

.field private i:I

.field private j:I

.field private k:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Le;->g()[C

    move-result-object v0

    sput-object v0, Lcv;->d:[C

    return-void
.end method

.method public constructor <init>(Lr;ILaj;Ljava/io/Writer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3}, Lct;-><init>(ILaj;)V

    iput v0, p0, Lcv;->h:I

    iput v0, p0, Lcv;->i:I

    iput-object p1, p0, Lcv;->e:Lr;

    iput-object p4, p0, Lcv;->f:Ljava/io/Writer;

    invoke-virtual {p1}, Lr;->f()[C

    move-result-object v0

    iput-object v0, p0, Lcv;->g:[C

    iget-object v0, p0, Lcv;->g:[C

    array-length v0, v0

    iput v0, p0, Lcv;->j:I

    return-void
.end method

.method private static a(I[CI)V
    .locals 4

    const/16 v1, 0x5c

    const/16 v3, 0x30

    if-gez p0, :cond_0

    add-int/lit8 v0, p0, 0x1

    neg-int v0, v0

    aput-char v1, p1, p2

    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x75

    aput-char v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    aput-char v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    aput-char v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcv;->d:[C

    shr-int/lit8 v3, v0, 0x4

    aget-char v2, v2, v3

    aput-char v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcv;->d:[C

    and-int/lit8 v0, v0, 0xf

    aget-char v0, v2, v0

    aput-char v0, p1, v1

    :goto_0
    return-void

    :cond_0
    aput-char v1, p1, p2

    add-int/lit8 v0, p2, 0x1

    int-to-char v1, p0

    aput-char v1, p1, v0

    goto :goto_0
.end method

.method private b(I)V
    .locals 7

    const/16 v4, 0x30

    const/4 v6, 0x6

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcv;->k:[C

    if-nez v0, :cond_0

    new-array v0, v6, [C

    const/16 v1, 0x5c

    aput-char v1, v0, v5

    aput-char v4, v0, v2

    const/4 v1, 0x3

    aput-char v4, v0, v1

    :cond_0
    if-gez p1, :cond_1

    add-int/lit8 v1, p1, 0x1

    neg-int v1, v1

    const/16 v2, 0x75

    aput-char v2, v0, v3

    const/4 v2, 0x4

    sget-object v3, Lcv;->d:[C

    shr-int/lit8 v4, v1, 0x4

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    const/4 v2, 0x5

    sget-object v3, Lcv;->d:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    aput-char v1, v0, v2

    iget-object v1, p0, Lcv;->f:Ljava/io/Writer;

    invoke-virtual {v1, v0, v5, v6}, Ljava/io/Writer;->write([CII)V

    :goto_0
    return-void

    :cond_1
    int-to-char v1, p1

    aput-char v1, v0, v3

    iget-object v1, p0, Lcv;->f:Ljava/io/Writer;

    invoke-virtual {v1, v0, v5, v2}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)V
    .locals 13

    const/4 v12, 0x6

    const/4 v11, 0x2

    const/4 v10, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcv;->j:I

    if-le v0, v1, :cond_a

    invoke-direct {p0}, Lcv;->g()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v10

    :cond_0
    iget v2, p0, Lcv;->j:I

    add-int v3, v1, v2

    if-le v3, v0, :cond_1

    sub-int v2, v0, v1

    :cond_1
    add-int v3, v1, v2

    iget-object v4, p0, Lcv;->g:[C

    invoke-virtual {p1, v1, v3, v4, v10}, Ljava/lang/String;->getChars(II[CI)V

    invoke-static {}, Le;->f()[I

    move-result-object v3

    array-length v4, v3

    move v5, v10

    :goto_0
    if-ge v5, v2, :cond_8

    move v6, v5

    :cond_2
    iget-object v7, p0, Lcv;->g:[C

    aget-char v7, v7, v6

    if-ge v7, v4, :cond_3

    aget v7, v3, v7

    if-nez v7, :cond_4

    :cond_3
    add-int/lit8 v6, v6, 0x1

    if-lt v6, v2, :cond_2

    :cond_4
    sub-int v7, v6, v5

    if-lez v7, :cond_5

    iget-object v8, p0, Lcv;->f:Ljava/io/Writer;

    iget-object v9, p0, Lcv;->g:[C

    invoke-virtual {v8, v9, v5, v7}, Ljava/io/Writer;->write([CII)V

    if-ge v6, v2, :cond_8

    :cond_5
    iget-object v5, p0, Lcv;->g:[C

    aget-char v5, v5, v6

    aget v5, v3, v5

    add-int/lit8 v6, v6, 0x1

    if-gez v5, :cond_6

    move v7, v12

    :goto_1
    iget v8, p0, Lcv;->i:I

    if-le v7, v8, :cond_7

    invoke-direct {p0, v5}, Lcv;->b(I)V

    move v5, v6

    goto :goto_0

    :cond_6
    move v7, v11

    goto :goto_1

    :cond_7
    sub-int/2addr v6, v7

    iget-object v7, p0, Lcv;->g:[C

    invoke-static {v5, v7, v6}, Lcv;->a(I[CI)V

    move v5, v6

    goto :goto_0

    :cond_8
    add-int/2addr v1, v2

    if-lt v1, v0, :cond_0

    :cond_9
    return-void

    :cond_a
    iget v1, p0, Lcv;->i:I

    add-int/2addr v1, v0

    iget v2, p0, Lcv;->j:I

    if-le v1, v2, :cond_b

    invoke-direct {p0}, Lcv;->g()V

    :cond_b
    iget-object v1, p0, Lcv;->g:[C

    iget v2, p0, Lcv;->i:I

    invoke-virtual {p1, v10, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget v1, p0, Lcv;->i:I

    add-int/2addr v0, v1

    invoke-static {}, Le;->f()[I

    move-result-object v1

    array-length v2, v1

    :goto_2
    iget v3, p0, Lcv;->i:I

    if-ge v3, v0, :cond_9

    :goto_3
    iget-object v3, p0, Lcv;->g:[C

    iget v4, p0, Lcv;->i:I

    aget-char v3, v3, v4

    if-ge v3, v2, :cond_c

    aget v3, v1, v3

    if-nez v3, :cond_d

    :cond_c
    iget v3, p0, Lcv;->i:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcv;->i:I

    if-ge v3, v0, :cond_9

    goto :goto_3

    :cond_d
    iget v3, p0, Lcv;->i:I

    iget v4, p0, Lcv;->h:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_e

    iget-object v4, p0, Lcv;->f:Ljava/io/Writer;

    iget-object v5, p0, Lcv;->g:[C

    iget v6, p0, Lcv;->h:I

    invoke-virtual {v4, v5, v6, v3}, Ljava/io/Writer;->write([CII)V

    :cond_e
    iget-object v3, p0, Lcv;->g:[C

    iget v4, p0, Lcv;->i:I

    aget-char v3, v3, v4

    aget v3, v1, v3

    iget v4, p0, Lcv;->i:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcv;->i:I

    if-gez v3, :cond_f

    move v4, v12

    :goto_4
    iget v5, p0, Lcv;->i:I

    if-le v4, v5, :cond_10

    iget v4, p0, Lcv;->i:I

    iput v4, p0, Lcv;->h:I

    invoke-direct {p0, v3}, Lcv;->b(I)V

    goto :goto_2

    :cond_f
    move v4, v11

    goto :goto_4

    :cond_10
    iget v5, p0, Lcv;->i:I

    sub-int v4, v5, v4

    iput v4, p0, Lcv;->h:I

    iget-object v5, p0, Lcv;->g:[C

    invoke-static {v3, v5, v4}, Lcv;->a(I[CI)V

    goto :goto_2
.end method

.method private g()V
    .locals 4

    iget v0, p0, Lcv;->i:I

    iget v1, p0, Lcv;->h:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    iget v1, p0, Lcv;->h:I

    const/4 v2, 0x0

    iput v2, p0, Lcv;->h:I

    iput v2, p0, Lcv;->i:I

    iget-object v2, p0, Lcv;->f:Ljava/io/Writer;

    iget-object v3, p0, Lcv;->g:[C

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/Writer;->write([CII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lcv;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcv;->c:Lcl;

    invoke-virtual {v0}, Lcl;->g()Lcl;

    move-result-object v0

    iput-object v0, p0, Lcv;->c:Lcl;

    iget-object v0, p0, Lcv;->a:Lbt;

    if-nez v0, :cond_1

    iget v0, p0, Lcv;->i:I

    iget v1, p0, Lcv;->j:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcv;->g()V

    :cond_0
    iget-object v0, p0, Lcv;->g:[C

    iget v1, p0, Lcv;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcv;->i:I

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    :cond_1
    return-void
.end method

.method public final a(I)V
    .locals 4

    const/16 v3, 0x22

    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcv;->c(Ljava/lang/String;)V

    iget v0, p0, Lcv;->i:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Lcv;->j:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcv;->g()V

    :cond_0
    iget-boolean v0, p0, Lcv;->b:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcv;->i:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Lcv;->j:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcv;->g()V

    :cond_1
    iget-object v0, p0, Lcv;->g:[C

    iget v1, p0, Lcv;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcv;->i:I

    aput-char v3, v0, v1

    iget-object v0, p0, Lcv;->g:[C

    iget v1, p0, Lcv;->i:I

    invoke-static {p1, v0, v1}, Lcz;->a(I[CI)I

    move-result v0

    iput v0, p0, Lcv;->i:I

    iget-object v0, p0, Lcv;->g:[C

    iget v1, p0, Lcv;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcv;->i:I

    aput-char v3, v0, v1

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcv;->g:[C

    iget v1, p0, Lcv;->i:I

    invoke-static {p1, v0, v1}, Lcz;->a(I[CI)I

    move-result v0

    iput v0, p0, Lcv;->i:I

    goto :goto_0
.end method

.method public final a(J)V
    .locals 4

    const/16 v3, 0x22

    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcv;->c(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcv;->b:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcv;->i:I

    add-int/lit8 v0, v0, 0x17

    iget v1, p0, Lcv;->j:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcv;->g()V

    :cond_0
    iget-object v0, p0, Lcv;->g:[C

    iget v1, p0, Lcv;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcv;->i:I

    aput-char v3, v0, v1

    iget-object v0, p0, Lcv;->g:[C

    iget v1, p0, Lcv;->i:I

    invoke-static {p1, p2, v0, v1}, Lcz;->a(J[CI)I

    move-result v0

    iput v0, p0, Lcv;->i:I

    iget-object v0, p0, Lcv;->g:[C

    iget v1, p0, Lcv;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcv;->i:I

    aput-char v3, v0, v1

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcv;->i:I

    add-int/lit8 v0, v0, 0x15

    iget v1, p0, Lcv;->j:I

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lcv;->g()V

    :cond_2
    iget-object v0, p0, Lcv;->g:[C

    iget v1, p0, Lcv;->i:I

    invoke-static {p1, p2, v0, v1}, Lcz;->a(J[CI)I

    move-result v0

    iput v0, p0, Lcv;->i:I

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x1

    const/16 v3, 0x22

    iget-object v0, p0, Lcv;->c:Lcl;

    invoke-virtual {v0, p1}, Lcl;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v1, "Can not write a field name, expecting a value"

    invoke-static {v1}, Lcv;->d(Ljava/lang/String;)V

    :cond_0
    if-ne v0, v2, :cond_3

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcv;->a:Lbt;

    if-eqz v1, :cond_5

    sget-object v0, Lbw;->c:Lbw;

    invoke-virtual {p0, v0}, Lcv;->a(Lbw;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcv;->i:I

    iget v1, p0, Lcv;->j:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcv;->g()V

    :cond_1
    iget-object v0, p0, Lcv;->g:[C

    iget v1, p0, Lcv;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcv;->i:I

    aput-char v3, v0, v1

    invoke-direct {p0, p1}, Lcv;->e(Ljava/lang/String;)V

    iget v0, p0, Lcv;->i:I

    iget v1, p0, Lcv;->j:I

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lcv;->g()V

    :cond_2
    iget-object v0, p0, Lcv;->g:[C

    iget v1, p0, Lcv;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcv;->i:I

    aput-char v3, v0, v1

    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcv;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget v1, p0, Lcv;->i:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcv;->j:I

    if-lt v1, v2, :cond_6

    invoke-direct {p0}, Lcv;->g()V

    :cond_6
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcv;->g:[C

    iget v1, p0, Lcv;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcv;->i:I

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    :cond_7
    sget-object v0, Lbw;->c:Lbw;

    invoke-virtual {p0, v0}, Lcv;->a(Lbw;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0, p1}, Lcv;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcv;->g:[C

    iget v1, p0, Lcv;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcv;->i:I

    aput-char v3, v0, v1

    invoke-direct {p0, p1}, Lcv;->e(Ljava/lang/String;)V

    iget v0, p0, Lcv;->i:I

    iget v1, p0, Lcv;->j:I

    if-lt v0, v1, :cond_9

    invoke-direct {p0}, Lcv;->g()V

    :cond_9
    iget-object v0, p0, Lcv;->g:[C

    iget v1, p0, Lcv;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcv;->i:I

    aput-char v3, v0, v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcv;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcv;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 4

    const/16 v3, 0x65

    const-string v0, "write boolean value"

    invoke-virtual {p0, v0}, Lcv;->c(Ljava/lang/String;)V

    iget v0, p0, Lcv;->i:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcv;->j:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcv;->g()V

    :cond_0
    iget v0, p0, Lcv;->i:I

    iget-object v1, p0, Lcv;->g:[C

    if-eqz p1, :cond_1

    const/16 v2, 0x74

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x72

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x75

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcv;->i:I

    return-void

    :cond_1
    const/16 v2, 0x66

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x61

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x6c

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x73

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcv;->c:Lcl;

    invoke-virtual {v0}, Lcl;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcv;->c:Lcl;

    invoke-virtual {v1}, Lcl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcv;->d(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcv;->a:Lbt;

    if-nez v0, :cond_2

    iget v0, p0, Lcv;->i:I

    iget v1, p0, Lcv;->j:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcv;->g()V

    :cond_1
    iget-object v0, p0, Lcv;->g:[C

    iget v1, p0, Lcv;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcv;->i:I

    const/16 v2, 0x5d

    aput-char v2, v0, v1

    :cond_2
    iget-object v0, p0, Lcv;->c:Lcl;

    invoke-virtual {v0}, Lcl;->i()Lcl;

    move-result-object v0

    iput-object v0, p0, Lcv;->c:Lcl;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x6c

    const/16 v3, 0x22

    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lcv;->c(Ljava/lang/String;)V

    if-nez p1, :cond_1

    iget v0, p0, Lcv;->i:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcv;->j:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcv;->g()V

    :cond_0
    iget v0, p0, Lcv;->i:I

    iget-object v1, p0, Lcv;->g:[C

    const/16 v2, 0x6e

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x75

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput-char v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput-char v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcv;->i:I

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcv;->i:I

    iget v1, p0, Lcv;->j:I

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lcv;->g()V

    :cond_2
    iget-object v0, p0, Lcv;->g:[C

    iget v1, p0, Lcv;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcv;->i:I

    aput-char v3, v0, v1

    invoke-direct {p0, p1}, Lcv;->e(Ljava/lang/String;)V

    iget v0, p0, Lcv;->i:I

    iget v1, p0, Lcv;->j:I

    if-lt v0, v1, :cond_3

    invoke-direct {p0}, Lcv;->g()V

    :cond_3
    iget-object v0, p0, Lcv;->g:[C

    iget v1, p0, Lcv;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcv;->i:I

    aput-char v3, v0, v1

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lcv;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcv;->c:Lcl;

    invoke-virtual {v0}, Lcl;->h()Lcl;

    move-result-object v0

    iput-object v0, p0, Lcv;->c:Lcl;

    iget-object v0, p0, Lcv;->a:Lbt;

    if-nez v0, :cond_1

    iget v0, p0, Lcv;->i:I

    iget v1, p0, Lcv;->j:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcv;->g()V

    :cond_0
    iget-object v0, p0, Lcv;->g:[C

    iget v1, p0, Lcv;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcv;->i:I

    const/16 v2, 0x7b

    aput-char v2, v0, v1

    :cond_1
    return-void
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcv;->c:Lcl;

    invoke-virtual {v0}, Lcl;->j()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expecting field name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcv;->d(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcv;->a:Lbt;

    if-nez v1, :cond_3

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/16 v0, 0x2c

    :goto_1
    iget v1, p0, Lcv;->i:I

    iget v2, p0, Lcv;->j:I

    if-lt v1, v2, :cond_2

    invoke-direct {p0}, Lcv;->g()V

    :cond_2
    iget-object v1, p0, Lcv;->g:[C

    iget v2, p0, Lcv;->i:I

    aput-char v0, v1, v2

    iget v0, p0, Lcv;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcv;->i:I

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x3a

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x20

    goto :goto_1

    :cond_3
    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: should never end up through this code path"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    iget-object v0, p0, Lcv;->c:Lcl;

    invoke-virtual {v0}, Lcl;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcv;->c:Lcl;

    invoke-virtual {v0}, Lcl;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 2

    invoke-super {p0}, Lct;->close()V

    iget-object v0, p0, Lcv;->g:[C

    if-eqz v0, :cond_1

    sget-object v0, Lbw;->b:Lbw;

    invoke-virtual {p0, v0}, Lcv;->a(Lbw;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcv;->f()Lcl;

    move-result-object v0

    invoke-virtual {v0}, Lbz;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcv;->b()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lbz;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcv;->d()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcv;->g()V

    iget-object v0, p0, Lcv;->e:Lr;

    invoke-virtual {v0}, Lr;->c()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lbw;->a:Lbw;

    invoke-virtual {p0, v0}, Lcv;->a(Lbw;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcv;->f:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    :goto_1
    iget-object v0, p0, Lcv;->g:[C

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Lcv;->g:[C

    iget-object v1, p0, Lcv;->e:Lr;

    invoke-virtual {v1, v0}, Lr;->b([C)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcv;->f:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    goto :goto_1
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcv;->c:Lcl;

    invoke-virtual {v0}, Lcl;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcv;->c:Lcl;

    invoke-virtual {v1}, Lcl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcv;->d(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcv;->c:Lcl;

    invoke-virtual {v0}, Lcl;->i()Lcl;

    move-result-object v0

    iput-object v0, p0, Lcv;->c:Lcl;

    iget-object v0, p0, Lcv;->a:Lbt;

    if-nez v0, :cond_2

    iget v0, p0, Lcv;->i:I

    iget v1, p0, Lcv;->j:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcv;->g()V

    :cond_1
    iget-object v0, p0, Lcv;->g:[C

    iget v1, p0, Lcv;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcv;->i:I

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    :cond_2
    return-void
.end method

.method public final e()V
    .locals 1

    invoke-direct {p0}, Lcv;->g()V

    iget-object v0, p0, Lcv;->f:Ljava/io/Writer;

    if-eqz v0, :cond_0

    sget-object v0, Lbw;->e:Lbw;

    invoke-virtual {p0, v0}, Lcv;->a(Lbw;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcv;->f:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    :cond_0
    return-void
.end method
