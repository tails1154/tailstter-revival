.class public final Ldi;
.super Lcy;


# instance fields
.field public f:J

.field public g:Ljava/lang/String;

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcy;-><init>()V

    return-void
.end method

.method public static a(Lcy;)Ldi;
    .locals 3

    iget-object v0, p0, Lcy;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcy;->c:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Lt;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ldi;

    invoke-direct {v1}, Ldi;-><init>()V

    iget-object v2, p0, Lcy;->c:Ljava/lang/String;

    iput-object v2, v1, Ldi;->c:Ljava/lang/String;

    iget-object v2, p0, Lcy;->d:Ljava/lang/String;

    iput-object v2, v1, Ldi;->d:Ljava/lang/String;

    iget-object v2, p0, Lcy;->e:Ljava/lang/String;

    iput-object v2, v1, Ldi;->e:Ljava/lang/String;

    invoke-static {v0}, Lt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ldi;->g:Ljava/lang/String;

    iget v0, p0, Lcy;->a:I

    iput v0, v1, Ldi;->a:I

    iget v0, p0, Lcy;->b:I

    iput v0, v1, Ldi;->b:I

    const/4 v0, 0x1

    iput v0, v1, Ldi;->h:I

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcy;->d:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    check-cast p1, Ldi;

    iget-wide v0, p0, Ldi;->f:J

    iget-wide v2, p1, Ldi;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    move v0, v5

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    invoke-super {p0}, Lcy;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Ldi;->f:J

    iget-wide v3, p0, Ldi;->f:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method
