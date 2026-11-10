.class public abstract Lbo;
.super Lp;


# instance fields
.field protected a:[C

.field private r:Ljava/io/Reader;


# direct methods
.method protected constructor <init>(Lr;ILjava/io/Reader;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lp;-><init>(Lr;I)V

    iput-object p3, p0, Lbo;->r:Ljava/io/Reader;

    invoke-virtual {p1}, Lr;->e()[C

    move-result-object v0

    iput-object v0, p0, Lbo;->a:[C

    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 5

    const/4 v4, 0x0

    iget-wide v0, p0, Lbo;->e:J

    iget v2, p0, Lbo;->d:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lbo;->e:J

    iget v0, p0, Lbo;->g:I

    iget v1, p0, Lbo;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lbo;->g:I

    iget-object v0, p0, Lbo;->r:Ljava/io/Reader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbo;->r:Ljava/io/Reader;

    iget-object v1, p0, Lbo;->a:[C

    iget-object v2, p0, Lbo;->a:[C

    array-length v2, v2

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-lez v0, :cond_0

    iput v4, p0, Lbo;->c:I

    iput v0, p0, Lbo;->d:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lbo;->b()V

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reader returned 0 characters when trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbo;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method protected final b()V
    .locals 1

    iget-object v0, p0, Lbo;->r:Ljava/io/Reader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbo;->b:Lr;

    invoke-virtual {v0}, Lr;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Laq;->a:Laq;

    invoke-virtual {p0, v0}, Lbo;->a(Laq;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lbo;->r:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lbo;->r:Ljava/io/Reader;

    :cond_2
    return-void
.end method

.method protected final c()V
    .locals 2

    invoke-super {p0}, Lp;->c()V

    iget-object v0, p0, Lbo;->a:[C

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lbo;->a:[C

    iget-object v1, p0, Lbo;->b:Lr;

    invoke-virtual {v1, v0}, Lr;->a([C)V

    :cond_0
    return-void
.end method

.method protected final e(Ljava/lang/String;)C
    .locals 3

    iget v0, p0, Lbo;->c:I

    iget v1, p0, Lbo;->d:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lbo;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lbo;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lbo;->a:[C

    iget v1, p0, Lbo;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbo;->c:I

    aget-char v0, v0, v1

    return v0
.end method
