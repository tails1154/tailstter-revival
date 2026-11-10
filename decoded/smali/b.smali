.class public abstract Lb;
.super Lp;


# instance fields
.field protected a:[B

.field private r:Ljava/io/InputStream;

.field private s:Z


# direct methods
.method protected constructor <init>(Lr;ILjava/io/InputStream;[BIIZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lp;-><init>(Lr;I)V

    iput-object p3, p0, Lb;->r:Ljava/io/InputStream;

    iput-object p4, p0, Lb;->a:[B

    iput p5, p0, Lb;->c:I

    iput p6, p0, Lb;->d:I

    iput-boolean p7, p0, Lb;->s:Z

    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 5

    const/4 v4, 0x0

    iget-wide v0, p0, Lb;->e:J

    iget v2, p0, Lb;->d:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lb;->e:J

    iget v0, p0, Lb;->g:I

    iget v1, p0, Lb;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lb;->g:I

    iget-object v0, p0, Lb;->r:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb;->r:Ljava/io/InputStream;

    iget-object v1, p0, Lb;->a:[B

    iget-object v2, p0, Lb;->a:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    iput v4, p0, Lb;->c:I

    iput v0, p0, Lb;->d:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lb;->b()V

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputStream.read() returned 0 characters when trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lb;->a:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v0, p0, Lb;->r:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb;->b:Lr;

    invoke-virtual {v0}, Lr;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Laq;->a:Laq;

    invoke-virtual {p0, v0}, Lb;->a(Laq;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lb;->r:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lb;->r:Ljava/io/InputStream;

    :cond_2
    return-void
.end method

.method protected final c()V
    .locals 2

    invoke-super {p0}, Lp;->c()V

    iget-boolean v0, p0, Lb;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb;->a:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lb;->a:[B

    iget-object v1, p0, Lb;->b:Lr;

    invoke-virtual {v1, v0}, Lr;->a([B)V

    :cond_0
    return-void
.end method
