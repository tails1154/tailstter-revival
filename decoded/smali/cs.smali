.class final Lcs;
.super Ljava/io/FilterOutputStream;


# instance fields
.field private final a:Lba;

.field private final b:J

.field private final c:J

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;JLba;)V
    .locals 4

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p4, p0, Lcs;->a:Lba;

    const-wide/16 v0, 0x2

    mul-long/2addr v0, p2

    iput-wide v0, p0, Lcs;->b:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcs;->d:J

    iget-wide v0, p0, Lcs;->b:J

    const-wide/16 v2, 0x5

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcs;->c:J

    iget-wide v0, p0, Lcs;->c:J

    iput-wide v0, p0, Lcs;->e:J

    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 5

    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    iget-wide v0, p0, Lcs;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcs;->d:J

    iget-wide v0, p0, Lcs;->d:J

    iget-wide v2, p0, Lcs;->e:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    iget-object v0, p0, Lcs;->a:Lba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcs;->a:Lba;

    iget-wide v1, p0, Lcs;->d:J

    iget-wide v3, p0, Lcs;->b:J

    invoke-interface {v0, v1, v2, v3, v4}, Lba;->a(JJ)V

    :cond_0
    iget-wide v0, p0, Lcs;->e:J

    iget-wide v2, p0, Lcs;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcs;->e:J

    :cond_1
    return-void
.end method

.method public final write([BII)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterOutputStream;->write([BII)V

    iget-wide v0, p0, Lcs;->d:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcs;->d:J

    iget-wide v0, p0, Lcs;->d:J

    iget-wide v2, p0, Lcs;->e:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    iget-object v0, p0, Lcs;->a:Lba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcs;->a:Lba;

    iget-wide v1, p0, Lcs;->d:J

    iget-wide v3, p0, Lcs;->b:J

    invoke-interface {v0, v1, v2, v3, v4}, Lba;->a(JJ)V

    :cond_0
    iget-wide v0, p0, Lcs;->e:J

    iget-wide v2, p0, Lcs;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcs;->e:J

    :cond_1
    return-void
.end method
