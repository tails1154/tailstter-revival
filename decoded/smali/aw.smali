.class abstract Law;
.super Ljava/io/Reader;


# instance fields
.field protected a:Ljava/io/InputStream;

.field protected b:[B

.field protected c:I

.field protected d:I

.field private e:Lr;

.field private f:[C


# direct methods
.method protected constructor <init>(Lr;Ljava/io/InputStream;[BII)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Law;->f:[C

    iput-object p1, p0, Law;->e:Lr;

    iput-object p2, p0, Law;->a:Ljava/io/InputStream;

    iput-object p3, p0, Law;->b:[B

    iput p4, p0, Law;->c:I

    iput p5, p0, Law;->d:I

    return-void
.end method

.method protected static b()V
    .locals 2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Strange I/O stream, returned 0 bytes on read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Law;->b:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Law;->b:[B

    iget-object v1, p0, Law;->e:Lr;

    invoke-virtual {v1, v0}, Lr;->a([B)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Law;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Law;->a:Ljava/io/InputStream;

    invoke-virtual {p0}, Law;->a()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public read()I
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Law;->f:[C

    if-nez v0, :cond_0

    new-array v0, v2, [C

    iput-object v0, p0, Law;->f:[C

    :cond_0
    iget-object v0, p0, Law;->f:[C

    invoke-virtual {p0, v0, v1, v2}, Law;->read([CII)I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Law;->f:[C

    aget-char v0, v0, v1

    goto :goto_0
.end method
