.class public final Lbd;
.super Ljava/io/InputStream;


# instance fields
.field private a:Lr;

.field private b:Ljava/io/InputStream;

.field private c:[B

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lr;Ljava/io/InputStream;[BII)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lbd;->a:Lr;

    iput-object p2, p0, Lbd;->b:Ljava/io/InputStream;

    iput-object p3, p0, Lbd;->c:[B

    iput p4, p0, Lbd;->d:I

    iput p5, p0, Lbd;->e:I

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lbd;->c:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lbd;->c:[B

    iget-object v1, p0, Lbd;->a:Lr;

    invoke-virtual {v1, v0}, Lr;->a([B)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 2

    iget-object v0, p0, Lbd;->c:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lbd;->e:I

    iget v1, p0, Lbd;->d:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbd;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method public final close()V
    .locals 1

    invoke-direct {p0}, Lbd;->a()V

    iget-object v0, p0, Lbd;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final mark(I)V
    .locals 1

    iget-object v0, p0, Lbd;->c:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lbd;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    :cond_0
    return-void
.end method

.method public final markSupported()Z
    .locals 1

    iget-object v0, p0, Lbd;->c:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lbd;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final read()I
    .locals 3

    iget-object v0, p0, Lbd;->c:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbd;->c:[B

    iget v1, p0, Lbd;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbd;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lbd;->d:I

    iget v2, p0, Lbd;->e:I

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lbd;->a()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lbd;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0
.end method

.method public final read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lbd;->read([BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 3

    iget-object v0, p0, Lbd;->c:[B

    if-eqz v0, :cond_1

    iget v0, p0, Lbd;->e:I

    iget v1, p0, Lbd;->d:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_2

    :goto_0
    iget-object v1, p0, Lbd;->c:[B

    iget v2, p0, Lbd;->d:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lbd;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lbd;->d:I

    iget v1, p0, Lbd;->d:I

    iget v2, p0, Lbd;->e:I

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lbd;->a()V

    :cond_0
    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lbd;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, p3

    goto :goto_0
.end method

.method public final reset()V
    .locals 1

    iget-object v0, p0, Lbd;->c:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lbd;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    :cond_0
    return-void
.end method

.method public final skip(J)J
    .locals 11

    const-wide/16 v5, 0x0

    iget-object v0, p0, Lbd;->c:[B

    if-eqz v0, :cond_2

    iget v0, p0, Lbd;->e:I

    iget v1, p0, Lbd;->d:I

    sub-int/2addr v0, v1

    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-lez v1, :cond_1

    iget v0, p0, Lbd;->d:I

    long-to-int v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lbd;->d:I

    move-wide v0, p1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-direct {p0}, Lbd;->a()V

    int-to-long v1, v0

    add-long/2addr v1, v5

    int-to-long v3, v0

    sub-long v3, p1, v3

    move-wide v7, v1

    move-wide v0, v7

    move-wide v9, v3

    move-wide v2, v9

    :goto_1
    cmp-long v4, v2, v5

    if-lez v4, :cond_0

    iget-object v4, p0, Lbd;->b:Ljava/io/InputStream;

    invoke-virtual {v4, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_2
    move-wide v0, v5

    move-wide v2, p1

    goto :goto_1
.end method
