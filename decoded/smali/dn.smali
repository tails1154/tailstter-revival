.class public final Ldn;
.super Law;


# instance fields
.field private e:Z

.field private f:C

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Lr;Ljava/io/InputStream;[BIIZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p5}, Law;-><init>(Lr;Ljava/io/InputStream;[BII)V

    iput-char v0, p0, Ldn;->f:C

    iput v0, p0, Ldn;->g:I

    iput v0, p0, Ldn;->h:I

    iput-boolean p6, p0, Ldn;->e:Z

    return-void
.end method

.method private a(I)Z
    .locals 7

    const/4 v6, 0x4

    const/4 v4, 0x0

    iget v0, p0, Ldn;->h:I

    iget v1, p0, Ldn;->d:I

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Ldn;->h:I

    if-lez p1, :cond_2

    iget v0, p0, Ldn;->c:I

    if-lez v0, :cond_1

    move v0, v4

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Ldn;->b:[B

    iget-object v2, p0, Ldn;->b:[B

    iget v3, p0, Ldn;->c:I

    add-int/2addr v3, v0

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v4, p0, Ldn;->c:I

    :cond_1
    iput p1, p0, Ldn;->d:I

    :goto_1
    iget v0, p0, Ldn;->d:I

    if-ge v0, v6, :cond_7

    iget-object v0, p0, Ldn;->a:Ljava/io/InputStream;

    iget-object v1, p0, Ldn;->b:[B

    iget v2, p0, Ldn;->d:I

    iget-object v3, p0, Ldn;->b:[B

    array-length v3, v3

    iget v4, p0, Ldn;->d:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_6

    if-gez v0, :cond_5

    invoke-virtual {p0}, Ldn;->a()V

    iget v0, p0, Ldn;->d:I

    iget v1, p0, Ldn;->h:I

    add-int/2addr v1, v0

    iget v2, p0, Ldn;->g:I

    new-instance v3, Ljava/io/CharConversionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected EOF in the middle of a 4-byte UTF-32 char: got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", needed "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", at char #"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", byte #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    iput v4, p0, Ldn;->c:I

    iget-object v0, p0, Ldn;->a:Ljava/io/InputStream;

    iget-object v1, p0, Ldn;->b:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-gtz v0, :cond_4

    iput v4, p0, Ldn;->d:I

    if-gez v0, :cond_3

    invoke-virtual {p0}, Ldn;->a()V

    move v0, v4

    :goto_2
    return v0

    :cond_3
    invoke-static {}, Ldn;->b()V

    :cond_4
    iput v0, p0, Ldn;->d:I

    goto :goto_1

    :cond_5
    invoke-static {}, Ldn;->b()V

    :cond_6
    iget v1, p0, Ldn;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Ldn;->d:I

    goto/16 :goto_1

    :cond_7
    const/4 v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public final bridge synthetic close()V
    .locals 0

    invoke-super {p0}, Law;->close()V

    return-void
.end method

.method public final bridge synthetic read()I
    .locals 1

    invoke-super {p0}, Law;->read()I

    move-result v0

    return v0
.end method

.method public final read([CII)I
    .locals 8

    const v6, 0x10ffff

    const/4 v3, -0x1

    iget-object v0, p0, Ldn;->b:[B

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-gtz p3, :cond_1

    move v0, p3

    goto :goto_0

    :cond_1
    if-ltz p2, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read(buf,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), cbuf["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int v0, p3, p2

    iget-char v1, p0, Ldn;->f:C

    if-eqz v1, :cond_4

    add-int/lit8 v1, p2, 0x1

    iget-char v2, p0, Ldn;->f:C

    aput-char v2, p1, p2

    const/4 v2, 0x0

    iput-char v2, p0, Ldn;->f:C

    :goto_1
    if-ge v1, v0, :cond_a

    iget v2, p0, Ldn;->c:I

    iget-boolean v3, p0, Ldn;->e:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Ldn;->b:[B

    aget-byte v3, v3, v2

    shl-int/lit8 v3, v3, 0x18

    iget-object v4, p0, Ldn;->b:[B

    add-int/lit8 v5, v2, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    iget-object v4, p0, Ldn;->b:[B

    add-int/lit8 v5, v2, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    iget-object v4, p0, Ldn;->b:[B

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v3

    :goto_2
    iget v3, p0, Ldn;->c:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Ldn;->c:I

    const v3, 0xffff

    if-le v2, v3, :cond_9

    if-le v2, v6, :cond_6

    sub-int v0, v1, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(above "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Ldn;->h:I

    iget v4, p0, Ldn;->c:I

    add-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iget v4, p0, Ldn;->g:I

    add-int/2addr v0, v4

    new-instance v4, Ljava/io/CharConversionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid UTF-32 character 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at char #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", byte #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    iget v1, p0, Ldn;->d:I

    iget v2, p0, Ldn;->c:I

    sub-int/2addr v1, v2

    const/4 v2, 0x4

    if-ge v1, v2, :cond_b

    invoke-direct {p0, v1}, Ldn;->a(I)Z

    move-result v1

    if-nez v1, :cond_b

    move v0, v3

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Ldn;->b:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Ldn;->b:[B

    add-int/lit8 v5, v2, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    iget-object v4, p0, Ldn;->b:[B

    add-int/lit8 v5, v2, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    iget-object v4, p0, Ldn;->b:[B

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, v4, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v2, v3

    goto/16 :goto_2

    :cond_6
    const/high16 v3, 0x10000

    sub-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x1

    const v4, 0xd800

    shr-int/lit8 v5, v2, 0xa

    add-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, p1, v1

    const v1, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v1, v2

    if-lt v3, v0, :cond_7

    int-to-char v0, v1

    iput-char v0, p0, Ldn;->f:C

    move v0, v3

    :goto_3
    sub-int/2addr v0, p2

    iget v1, p0, Ldn;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Ldn;->g:I

    goto/16 :goto_0

    :cond_7
    move v2, v3

    :goto_4
    add-int/lit8 v3, v2, 0x1

    int-to-char v1, v1

    aput-char v1, p1, v2

    iget v1, p0, Ldn;->c:I

    iget v2, p0, Ldn;->d:I

    if-lt v1, v2, :cond_8

    move v0, v3

    goto :goto_3

    :cond_8
    move v1, v3

    goto/16 :goto_1

    :cond_9
    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_4

    :cond_a
    move v0, v1

    goto :goto_3

    :cond_b
    move v1, p2

    goto/16 :goto_1
.end method
